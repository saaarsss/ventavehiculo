<%-- 
    Document   : actualizarVehiculo
    Created on : 18-may-2021, 16:03:55
    Author     : sara
--%>

<%@page import="ModeloVO.VehiculoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="img/cars.jpg">
    <center>
        <h1>Actualizar vehiculos</h1>
        <div class="actv">
        <%            VehiculoVO vehVO = (VehiculoVO) request.getAttribute("vehiculo");
            if (vehVO != null) {
        %>
        

        <form action="Vehiculo" method="POST">
            <table>
                <tr>
                    <th>
                        PLACA <br>
                        <input type="text" name="textPlaca" value="<%=vehVO.getVehPlaca()%>"><br><br>
                        DATOS<br>
                        <input type="text" name="textDatos" value="<%=vehVO.getDatId()%>"><br><br>
                        CATEGORIA<br>
                        <input type="text" name="textCategoria" value="<%=vehVO.getCatId()%>"><br><br>
                        MEDELO<br>
                        <input type="text" name="textModelo" value="<%=vehVO.getVehModelo()%>"><br><br>
                        MARCA<br>
                        <input type="text" name="textMarca" value="<%=vehVO.getVehMarca()%>"><br><br>
                        ESTADO<br>
                        <input type="text" name="textEstado" value="<%=vehVO.getVehEstado()%>"><br><br>
                        PRECIO<br>
                        <input type="text" name="textPrecio" value="<%=vehVO.getVehPrecio()%>"><br><br>
                    </th>
                </tr>

            </table>

                    
        </form>
        </div>               
        <%}%>
 <button>Actualizar</button>
            <br>
         <form action="consultarVehiculo.jsp">
                    <input  class="btn btn-outline-danger" type="submit" name="accion" 
                            value="Menu" >   
         </form>
    </center>

        <a href ="consultarVehiculo.jsp">Volver</a>

</body>
</html>
