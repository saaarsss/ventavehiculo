<%-- 
    Document   : registrarVehiculo
    Created on : 18-may-2021, 14:42:31
    Author     : sara
--%>


<%@page import="ModeloVO.DatosPersonalesVO"%>
<%@page import="ModeloVO.CategoriaVO"%>
<%@page import="ModeloDAO.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>
<!DOCTYPE html>


<%
    //con esto traigo los datos personales
    DatosPersonalesVO datVO= new DatosPersonalesVO();
    datVO = (DatosPersonalesVO)buscarSesion.getAttribute("datosPersonales");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
     <body background="img/kash.jpg">
    <center>
        <center><h1 style="color:white "><i>Registrar Vehiculo</i></h1></center>
      
       <div class="regv col-lg-3">
        <form action="Vehiculo" method="POST">
            <table>
                <tr>
                    <th>
                        PLACA<br> 
                        <input type="text" name="textPlaca">
                        <input type="hidden" name="textDatos" value="<%=datVO.getDatId()%>"><br><br>
                        CATEGORIA<br>
                        <select name="textCategoria">
                            <option value="0">Seleccione...</option>
                            <%  
                                CategoriaDAO catDAO = new CategoriaDAO();
                                for (CategoriaVO catVO : catDAO.listar()) {
                            %>
                            <option value="<%=catVO.getCatId()%>"><%=catVO.getCatTipo()%></option>
                            <%}%>
                            <br>
                        </select>
                        <br><br>MODELO<br>
                        <input type="text" name="textModelo"><br><br>
                        MARCA<br>
                        <input type="text" name="textMarca"><br><br>
                        ESTADO<br>
                        <input type="text" name="textEstado"><br><br>
                        PRECIO<br>
                        <input type="text" name="textPrecio"><br><br>
                    </th>
                </tr>
            </table>
      <div>  
                    <form action="registrarVehiculo.jsp">
                    <input  class="btn btn-outline-warning" type="submit" name="accion" 
                            value="Registrar Vehiculo" >

                </form>
          
           
            <input type="hidden" value="1" name="opcion">
        </form> 
        <div>
            <% if (request.getAttribute("MensajeError") != null) {%>
            <div style="color: red">${mensajeError}</div>
            <%} else {%>
            <div style="color: cyan">${mensajeExito}</div>
            <%}%>
        </div>
        <br>
        
        <form action="consultarVehiculo.jsp">
                    <input  class="btn btn-outline-info" type="submit" name="accion" 
                            value="Consultar Vehiculo" >
                    <br>
                     <br>
        </form>             
       
        <form action="menu_Comprador.jsp">
                    <input  class="btn btn-outline-danger" type="submit" name="accion" 
                            value="Menu" >            
        </form>
    </center>
</body>
</html>
