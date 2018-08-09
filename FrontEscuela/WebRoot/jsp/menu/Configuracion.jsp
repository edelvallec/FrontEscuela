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

 $('#menu').css({
	 background:$("#colores").val()
	 });

}

function CambioFondoPagina()
{
 $('body').css({
	 background:$("#fondocolores").val()
	 });

}

</script>


  </head>
  
  <body class=''>

<form action="">
<h2>Configuracion del Sistema</h2>
<br>
<table align="left">
<tr><td><label>Menu Principal</label></td><td></td></tr>
<!-- <tr><td><input type="color" id="colores" onclick="startColorPicker(this)" onkeyup="maskedHex(this)" size="5"></td><td><button type="button"  onclick="CambioColores()">Cambiar</button</td></tr> -->
<tr><td>Selecciona el Color: &ensp;&ensp; </td><td><input type="color" id="colores" >&ensp;&ensp;</td><td><button type="button"  onclick="CambioColores()">Cambiar</button></td></tr>
</table>

<br>
<br>
<br>
<br>
<table align="left">
<tr><td><label>Fondo de Pagina</label></td><td></td></tr>
<tr><td>Selecciona el Color: &ensp;&ensp; </td><td><input type="color" id="fondocolores" >&ensp;&ensp;</td><td><button type="button"  onclick="CambioFondoPagina()">Cambiar</button></td></tr>

</table>
 
 </form>


  </body>
</html>
