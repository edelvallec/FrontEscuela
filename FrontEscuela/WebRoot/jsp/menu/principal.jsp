<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String usr = "";
       usr = request.getParameter("u");
String m = request.getParameter("m");       
System.out.println("Usuario: "+usr);
System.out.println("role: "+m);
session.setAttribute( "user", usr );
session.setAttribute( "t", m );

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Sistema de Punto de Venta</title>
    
    <link rel="icon" href="./img/pventaico.png" type="image/x-icon">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script type="text/javascript" src="./js/menu/principal.js"></script>
  <link rel="stylesheet" href="css/utilerias.css" type="text/css"></link>

  
  
  </head>
  
  <body>

<input type="hidden" id="tiporole" value="<%=m%>">
<div id="MenuPricipal"></div>
<div id="SubPagina"></div>
  
  </body>

</html>
