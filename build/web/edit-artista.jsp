
<%@page import="model.Artista"%>

<%
    Artista art = (Artista)request.getAttribute("artista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Musica</title>
    </head>
    
    
    
    <body>
        
        <h1>Edição</h1>
        <hr>
        
        <form action="CadastroArtista" method="post">
            <input type="text" name="id" value="<%= art.getIdArtista() %>" readonly>
            <br><br>
            <input type="text" name="artista" value="<%= art.getArtista() %>" placeholder="Nome do artista">
            <br><br>
            <select name="genero" required>
                <option value="<%= art.getGenero()%>"><%= art.getGenero() %></option>
                <option value="1">Rock</option>
                <option value="2">Blues</option>
                <option value="3">Funk</option>
                <option value="4">Jazz</option>
                <option value="5">Pop</option>
            </select>
            <br><br>
            <input type="text" name="nacionalidade" value="<%= art.getNacionalidade() %>" placeholder="Nacionalidade">
            <br><br>
            <input type="checkbox" name="solo" value="sim" <%= (art.getSolo()==1) ? "checked" : "" %>> <label>Artista Solo?</label>  
            <br><br>
            <input type="submit" value="Finalizar edição" >
            <input type="reset" value="Restaurar">
            <hr><br>
        </form>
        
        <br><br>
        <a href="home.jsp" >Pagina inicial</a>
        
    </body>
   
    
    
</html>
