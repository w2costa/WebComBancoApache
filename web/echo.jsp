<%-- 
    Document   : echo
    Created on : 09/10/2019, 17:16:16
    Author     : wilson.adm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ecoando os parâmetros da requisição (request)</title>
    </head>
    <body>
        <h2>Escolha os autores:</h2>
        <form method="get">
            <input type="checkbox" name="autor" value="Deitel">Deitel
            <input type="checkbox" name="autor" value="Tanenbaum">Tanenbaum
            <input type="checkbox" name="autor" value="Sommerville">Sommerville
            <input type="checkbox" name="autor" value="Wilson">Wilson
            <input type="submit" value="Consulta">
        </form>

        <%
            String[] autores = request.getParameterValues("autor");
            if (autores != null) {
        %>
        <h3>Você selecionou o(s) seguinte(s) autor(es):</h3>
        <ul>
            <%
                for (String autor : autores) {
            %>
            <li><%= autor%></li>
                <%
                    }
                %>
        </ul>
        <%
            }
        %>
        <br /><a href="<%= request.getRequestURI()%>">Voltar</a>     </body>
</html>
