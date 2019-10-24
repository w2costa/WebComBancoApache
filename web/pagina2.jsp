<%-- 
    Document   : pagina2
    Created on : 09/10/2019, 11:07:15
    Author     : wilson.adm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programação para Web - Aula 03</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            out.println("<h1>Nome: " + request.getParameter("nome") + "</h1>");
            out.println("<p>Parâmetros: " + request.getQueryString() + "</p>");

        %>
    </body>
</html>
