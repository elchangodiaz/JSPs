<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP con Scriptlets</title>
    </head>
    <body>
        <h1>JSP con Scriptlets</h1>
        <br/>
        <%-- Scriptlet para enviar info al navegador --%>
        <% 
            out.print("Saludos desde un scriptlet");
        %>
        <br/>
        <%--Scriptlet para manipular los objetos implicitos --%>
        <%
            String nombreAplicacion = request.getContextPath();
            out.print("nombre de la aplicacion: " + nombreAplicacion);
        %>
        <br/>
        <%-- Scriptlet con codigo condicionado --%>
        
        <% 
            if(session != null && session.isNew()){
        %>
        la sesion es nueva
        <%
            } else if(session !=null){
        %>
        la sesion no es nueva
        <%  } %>
        <br/>
        <a href="index.html">Regresar</a>
 
    </body>
</html>
