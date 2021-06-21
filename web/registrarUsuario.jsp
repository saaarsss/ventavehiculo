<%-- 
    Document   : registrarUsuario
    Created on : 10-may-2021, 16:00:41
    Author     : sara
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Usuario</title>
    </head>
    <body background="img/personas.jpg">
        <div class="menu col-lg-3">
    <center>
        <h1>Registrar Usuario</h1>
        <form method="POST" action="Usuario">
            <table>
                <tr>
                    Usuario: <br>
                <input type="text" name="textUsuario"><br>
                Contraseña:<br>
                <input type="password" name="textClave"><br>
                </tr>
            </table><br>
            <button>Registrarse</button>
            <input type="hidden" value="1" name="opcion">
        </form>
        <div>
            <% if (request.getAttribute("MensajeError") != null) {%>
            <div style="color: red">${mensajeError}</div>
            <%} else {%>
            <div style="color: blue">${mensajeExito}</div>
            <%}%>
        </div>
        <br>
        <a href="index.jsp">Menu</a><br>

    </center>
</body>
</html>
