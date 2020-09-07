<%-- 
    Document   : index
    Created on : Jun 3, 2020, 7:44:43 AM
    Author     : elchangodiaz
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hola Mundo JSPs</title>
    </head>
    <body>
        <h1>Hola Mundo JSPs</h1>
        <ul>
            <li> <% out.print("Hola Mundo con Scriptlets"); %> </li><%-- Scriptlets --%>
            <li> ${"Hola Mundo con Expression Lenguage (EL)"}</li>
            <li> <%="Hola mundo con Expresiones"%> </li><%-- Expresion   out.print() --%>
            <li> <c:out value="Hola Mundo con JSTL"/> </li>
            
        </ul>
    </body>
</html>
