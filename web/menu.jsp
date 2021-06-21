<%-- 
    Document   : menu
    Created on : 10-may-2021, 17:19:55
    Author     : sara
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>

<script src="Validaciones.js" type="text/javascript"></script>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="img/adm.jpg">
        <div class="menu col-lg-3">
            <br>
              <center><h1 style="color:white "><i>MENU</i></h1></center>
       
        <center><select onchange="redireccion(value)"></center>
            <center><option>Seleccione Rol...</option></center>

            <%                UsuarioVO usuVO = new UsuarioVO();
                ArrayList<UsuarioVO> listaRoles = (ArrayList<UsuarioVO>) buscarSesion.getAttribute("roles");
                for (int i = 0; i < listaRoles.size(); i++) {
                    usuVO = listaRoles.get(i);
            %>

            <center><option value="<%=usuVO.getRolTipo()%>" ><%=usuVO.getRolTipo()%></option></center>
            <% }%>
            <br>
        </select>
        <br>
        <br>
           <form method="post" action="Sesiones">
               <center><input class="btn btn-danger btn-block"  type="submit" value="Cerrar Sesión" ></center>
               <br>
    </body>
</html>
