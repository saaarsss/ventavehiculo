

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloVO.VehiculoVO"%>
<%@page import="ModeloDAO.VehiculoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <title>JSP Page</title>
    </head>
    <body background="img/cars.jpg">
    <center>
        <h1>Vehículos</h1>
        <form method="POST" action="Vehiculo">
            <table>
                <tr>
                    <th>
                        PLACA
                        <input type="text" name="textPlaca">

                        <button type="text" name="textPlaca" class="btn btn-primary">Consultar</button>
                    </th>
                </tr>
            </table><br><br>
            <input type="hidden" value="3" name="opcion">
        </form><br><br>
        <div>
            <% if (request.getAttribute("mensajeError") != null) {%>
            <div style="color: red">${mensajeError}</div>
            <%} else {%>
            <div style="color: cyan">${mensajeExito}</div>
            <%}%>
        </div>
        <div class="conv ">
            <br>
           
            <form>
                <table border="3">

                    <tr>
                        <th>PLACA</th>
                        <th>DATOS</th>
                        <th>CATEGORIA</th>
                        <th>MODELO</th>
                        <th>MARCA</th>
                        <th>ESTADO</th>
                        <th>PRECIO</th>
                    </tr>
                    <%
                        VehiculoVO vehVO = new VehiculoVO();
                        VehiculoDAO vehDAO = new VehiculoDAO();
                        ArrayList<VehiculoVO> listaVehiculos = vehDAO.listar();
                        for (int i = 0; i < listaVehiculos.size(); i++) {

                            vehVO = listaVehiculos.get(i);

                    %>
                    <tr>
                        <td><%=vehVO.getVehPlaca()%></td>
                        <td><%=vehVO.getDatId()%></td>
                        <td><%=vehVO.getCatId()%></td>
                        <td><%=vehVO.getVehModelo()%></td>
                        <td><%=vehVO.getVehMarca()%></td>
                        <td><%=vehVO.getVehEstado()%></td>
                        <td><%=vehVO.getVehPrecio()%></td>


                    </tr>
                    <%}%>
                </table>
                <br>     
                <form action="consultarVehiculo.jsp">
                    <input  class="btn btn-outline-danger" type="submit" name="accion" 
                            value="Menu" >   
                </form>


                <br>
                <form action="registrarVehiculo.jsp">
                    <input  class="btn btn-outline-warning" type="submit" name="accion" 
                            value="Volver" >
                </form>
                </form> 
        </div>
    </center>
</body>              
</html>
