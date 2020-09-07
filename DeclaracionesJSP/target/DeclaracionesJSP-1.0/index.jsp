<%-- Agregamos una declaracion --%>
<%!
    //Declaramos una variable con su metodo get
    private String usuario = "Alberto";

    public String getUsuario(){
    return this.usuario;
    }

    //Declaramos un contador de visitas
    public int contadorVisitas = 1;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uso de declaraciones con JSPs</title>
    </head>
    <body>
        <h1>Uso de declaraciones con JSPs</h1>
        Valor de usuario por medio del atributo: <%= this.usuario%>
        <br/>
        Valor usuario por medio del metodo: <%= this.getUsuario() %>
        <br/>
        Contador Visitas: <%= this.contadorVisitas++ %>
    </body>
</html>
