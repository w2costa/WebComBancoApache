<%-- 
    Document   : first
    Created on : 09/10/2019, 17:11:35
    Author     : wilson.adm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>First JSP</title>
    </head>
    <body>
        <%
            double num = Math.random();
            if (num > 0.95) {
        %>
        <h2>Você teve um dia de sorte!</h2><p>(<%= num%>)</p>
        <%
        } else {
        %>
        <h2>Bem, a vida continua... </h2><p>(<%= num%>)</p>
        <%
            }
        %>
        <a href="<%= request.getRequestURI()%>"><h3>Tente de novo</h3></a>
    </body>
</html>
