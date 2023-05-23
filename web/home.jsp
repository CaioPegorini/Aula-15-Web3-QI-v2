
<%@page import="model.User" %>
<%
    User uSession = (User)session.getAttribute("userLoggedSession");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
    
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Inicial</title>
        
    </head>
    
    
    
    <body>
        
        <%@include file="session/verify.jsp" %>
        
        <p>
            Bem-vindo <%= (uSession != null) 
                            ? uSession.getUserName() 
                            : "Visitante"%>
            <button onclick="window.location.href='session/logout.jsp'">Logout</button>
        </p>
        
        <hr>
        <button onclick="window.location.href='cadastro.jsp'">Cadastrar</button>
        <button onclick="window.location.href='lista.jsp'">Listar</button>
        
    </body>
    
    
    
</html>
