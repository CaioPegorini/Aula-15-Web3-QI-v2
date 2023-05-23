
<%@page import="java.sql.SQLException"%>
<%@page import="model.MyDatabase"%>

<%
    try{
        MyDatabase.getDatabase();
        out.print("Conexão OK: ");
        //dizendo qual o nome do banco que estamos utilizando
        out.print(MyDatabase.getDatabase().getCatalog());
    }
    catch(SQLException | ClassNotFoundException e){
        out.print("Falha na conexão: " + e);
    }
%>