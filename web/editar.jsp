<%-- 
    Document   : editar
    Created on : 31/10/2019, 20:01:36
    Author     : wilson
--%>

<%@page import="modelo.Cliente"%>
<%@page import="controle.ClienteDAO"%>
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
            int id = Integer.parseInt(request.getParameter("id"));
            Cliente c = clienteDAO.getCliente(id);
        %>
        <div>
            <form action="salvar.jsp" method="GET">
                <input type="hidden" name="id" value="<%= c.getId()%>"/>
                <p>Nome: <input type="text" name="nome" value="<%= c.getNome() %>" size="50" /></p>
                <p><input type="submit" value="Salvar" name="botao" /></p>
            </form>
        </div>

    </body>
</html>
