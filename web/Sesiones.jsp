<%-- 
    Document   : Sesiones
    Created on : 31-may-2021, 16:08:41
    Author     : sara
--%>


<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
 <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
       

<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
    response.setDateHeader("Expires", 0);
%>
<%

    HttpSession buscarSesion = (HttpSession)request.getSession();
    String usuario="";
if (buscarSesion.getAttribute("datos") == null) {
         request.getRequestDispatcher("index.jsp").forward(request, response);
   
    }else{
    UsuarioVO  usuVO = (UsuarioVO)buscarSesion.getAttribute("datos");
    usuario = usuVO.getUsuLogin();
}
%>

 <%
    
if (buscarSesion.getAttribute("rol") == "Comprador") {
         request.getRequestDispatcher("menu_Comprador.jsp").forward(request, response);
   
    }else{
    UsuarioVO  usuVO = (UsuarioVO)buscarSesion.getAttribute("datos");
    usuario = usuVO.getUsuLogin();
}

%>

<%
    
if (buscarSesion.getAttribute("rol") == "Vendedor") {
         request.getRequestDispatcher("menu_Vendedor.jsp").forward(request, response);
   
    }else{
    UsuarioVO  usuVO = (UsuarioVO)buscarSesion.getAttribute("datos");
    usuario = usuVO.getUsuLogin();
}

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <br>
           <center><h1 style="color:white "><i>Bienvenido: <%=usuario%></i></h1></center>
        
          
         <form method="post" action="menu">
             <center><input class="btn btn-danger btn-block"  type=hidden value="Menu" ></center>
           
    </form> 
    </body>
</html>
