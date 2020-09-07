<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String fondo = request.getParameter("colorFondo");
    if(fondo == null || fondo.trim().equals("")){
        fondo = "white";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Cambio de Color Fondo</title>
    </head>
    <body bgColor="<%=fondo%>">
        <h1>JSP Cambio de Color Fondo</h1>
        <br/>
        Color de fondo aplicado: <%=fondo%>
        <br/>
        <a href="index.html">Regresar</a>
    </body>
</html>
