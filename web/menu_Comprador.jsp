

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body background="img/compra.PNG"> 
     <center>
        <div class="comprador col-lg-3">

            <div class="form-group text-center">
                <br>
                <center><h1 style="color:white "><i>COMPRADOR</i></h1></center>
                
                <form action="registrarVehiculo.jsp">
                    <input  class="btn btn-outline-warning" type="submit" name="accion" 
                            value="Registrar Vehiculo" >
                   

                </form>
               <form action="menu.jsp">
                    <input class="btn btn-outline-warning"  type="submit" name="accion"
                            value="           Menu         " >
                    
                    <br>
               </form>
                     <form method="post" action="Sesiones">
               <center><input class="btn btn-danger btn-block"  type="submit" value="Cerrar Sesión" ></center>
               <br> 
                <br>
                
                    </form>
            </div>
        </div>       
                   
                
      </center>
   </body>
</html>
