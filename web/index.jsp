<%-- 
    Document   : index
    Created on : 09/10/2019, 11:03:52
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
        <div>
            <form action="pagina2.jsp" method="GET">
                <p>Nome: <input type="text" name="nome" value="" size="50" /></p>
                <p><input type="submit" value="Enviar" name="botao" /></p>
            </form>
        </div>
        <div>
            <a href="first.jsp" >Página da Sorte</a>
        </div>
        <div>
            <a href="echo.jsp" >Teste de lista de autores</a>
        </div>
    </body>
</html>
