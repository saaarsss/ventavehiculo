<%-- 
   
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Iniciar Sesion</title>
    </head>
    <body background="img/kash.jpg">
    <center>
        <div class="container col-lg-3">
                <div class="form-group text-center">
                    <img src="img/usu.png" height="95" width="95" />
                   
                    <h2><i>Ingresar al sistema</i></h2>
        <form method="POST" action="Usuario">
            <table>
                <tr>
                    Usuario: <br>
                <input type="text" name="textUsuario"><br>
                Contraseña:<br>
                <input type="password" name="textClave"><br>
                </tr>
            </table><br>
             <button type="submit" value="Enviar" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  Iniciar sesión </button>
            <input class="btn btn-danger btn-block" type="hidden" value="3" name="opcion">
           </form>
                     <a href="registrarUsuario.jsp">Registrar Usuario</a><br>
        <div>
            <% if (request.getAttribute("mensajeError") != null) {%>
            <div style="color: red">${mensajeError}</div>
            <%} else {%>
            <div style="color: cyan">${mensajeExito}</div>
            <%}%>
        </div>
      </div>
    </center>
</body>
</html>
