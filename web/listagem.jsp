<%-- 
    Document   : listagem
    Created on : 17/10/2019, 19:16:27
    Author     : wilson
--%>

<%@page import="modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.Query"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("utf-8");

            EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
            EntityManager em = emf.createEntityManager();

            Query q = em.createQuery("SELECT c FROM Cliente c");
            List<Cliente> lista = q.getResultList();
            for (Cliente c : lista) {
        %>
        <p>Nome: <%= c.getNome()%> </p>
        <%
            }

            em.close();
        %>
    </body>
</html>
