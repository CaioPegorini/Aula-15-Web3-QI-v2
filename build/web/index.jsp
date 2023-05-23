

<%
    if(session.getAttribute("userLoggedSession") != null){
        response.sendRedirect("home.jsp");
    }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
    
    
    <head>
        <link rel="icon" href="img/play_musica_avatar_icone.png"/>
        <link rel="stylesheet" href="css/style.css"/>
        <title>Repositório Digital de Obras Musicais</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
    
    
    <body>
        
        
        <form action="Login" method="post" id="form-login">
            
            <img src="img/discos-icone-3.png" alt="Logotipo Repositório Musical" width="300"/>
            <br><br><br>
            
            <input type="email" name="user" id="user" class="fields" placeholder="Digite seu e-mail..." required>
            <br><br>
            
            <input type="password" name="pass" id="pass" class="fields" placeholder="Digite sua senha..." required>
            <br><br>
            
            <input type="submit" value="Entrar">
            
        </form>
        
        
    </body>
    
    
    
</html>