<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Configuracion.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript" language="javascript" src="js/colorPicker.js"></script>
<link rel="stylesheet" href="css/colorPicker.css" type="text/css"></link>

<script type="text/javascript">

function CambioColores()
{

//alert("holaaaaaaaaa");

// alert("El color es:"+ $("#colores").val());
 
 $('#menu').css({
	 background:$("#colores").val()
	 });

}


</script>


  </head>
  
  <body>

<div >
<h2>Configuracion del Sistema</h2>
<br>
<table>
<tr><td><label>Menu Principal</label></td><td></td></tr>
<tr><td><img src="images/paleta.jpg" onclick="startColorPicker(this)" onkeyup="maskedHex(this)"> </td><td></td></tr>

</table>

 <button type="button"  onclick="CambioColores()">Cambiar</button>
 
<input type="text" id="colores" >

</div>
  </body>
</html>
