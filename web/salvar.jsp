<%-- 
    Document   : pagina2
    Created on : 09/10/2019, 11:07:15
    Author     : wilson.adm
--%>

<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.TypedQuery"%>
<%@page import="modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="controle.JpaUtil"%>
<%@page import="javax.persistence.EntityManager"%>
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
            EntityManagerFactory emf = JpaUtil.getEmf();
            EntityManager em = emf.createEntityManager();

            em.getTransaction().begin();
            Cliente c = new Cliente();
            c.setNome(request.getParameter("nome"));
            em.persist(c);
            em.getTransaction().commit();
            em.close();
        %>
        <h2>Nome: <%= c.getNome()%> inserido no banco com sucesso.</h2>
    </body>
</html>
