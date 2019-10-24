<%-- 
    Document   : pagina2
    Created on : 09/10/2019, 11:07:15
    Author     : wilson.adm
--%>

<%@page import="controle.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programação para Web - Aula 04</title>
    </head>
    <body>
        <jsp:useBean id="cliente" scope="request" class="modelo.Cliente" />
        <jsp:setProperty name="cliente" property="nome" />
        <%
            request.setCharacterEncoding("UTF-8");
            ClienteDAO clienteDAO = new ClienteDAO();
            clienteDAO.salvar(cliente);
        %>
        <h2>Nome: <jsp:getProperty name="cliente" property="nome" /> inserido no banco com sucesso.</h2>
    </body>
</html>
