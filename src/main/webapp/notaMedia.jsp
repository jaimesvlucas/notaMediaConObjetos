<%-- 
    Document   : notaMedia.jsp
    Created on : 20 ene. 2021, 11:48:23
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="miAlumno" class="clases.Alumno"/>
         <% String nombre=request.getParameter("nombre");
           float nota1= Float.parseFloat(request.getParameter("num1"));
           float nota2= Float.parseFloat(request.getParameter("num2"));
           float nota3= Float.parseFloat(request.getParameter("num3"));
        %>
        <jsp:setProperty name="miAlumno" property="nota1" value="<%=nota1%>"/>
        <jsp:setProperty name="miAlumno" property="nota2" value="<%=nota2%>"/>
        <jsp:setProperty name="miAlumno" property="nota3" value="<%=nota3%>"/>
        <jsp:setProperty name="miAlumno" property="nombre" value="<%=nombre%>"/>
        <p style="color:<jsp:getProperty name='miAlumno' property="color" />">La nota media de 
            <jsp:getProperty name='miAlumno' property="nombre" /> es <jsp:getProperty name='miAlumno' property="notaMedia" /></p>
        <a href="index.jsp">Volver al index</a>
    </body>
</html>
