<%-- 
    Document   : listagem
    Created on : 17/10/2019, 19:16:27
    Author     : wilson
--%>

<%@page import="controle.ClienteDAO"%>
<%@page import="modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ClienteDAO clienteDAO = new ClienteDAO();
            
            List<Cliente> lista = clienteDAO.listaClientes();
            for (Cliente c : lista) {
        %>
        <p>Nome: <%= c.getNome()%> </p>
        <%
            }
        %>
    </body>
</html>
