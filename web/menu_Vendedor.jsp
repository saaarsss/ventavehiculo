

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>

<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <div class="menv col-lg-3">
            <br>
        <title>VENDEDOR</title>
    </head>
    <body background="img/parej.jpg">
    <center>
                   <center><h1 style="color:white "><i>VENDEDOR</i></h1></center>
        
        
         <form action="registrarVehiculo.jsp">
                    <input  class="btn btn-outline-warning" type="submit" name="accion" 
                            value="Registrar Vehiculo" >

                </form>
                  
                   
        <form method="post" action="Sesiones">
               <center><input class="btn btn-danger btn-blockk"  type="submit" value="Cerrar Sesión"></center>
               <br> 
       </form>
    </center>
</div>    
</body>
</html>
