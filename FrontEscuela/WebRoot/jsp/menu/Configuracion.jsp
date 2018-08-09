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
		<link rel="stylesheet" href="css/colorpicker.css" type="text/css" />
    <link rel="stylesheet" media="screen" type="text/css" href="css/layout.css" />
   
	<script type="text/javascript" src="js/colorpicker.js"></script>
    <script type="text/javascript" src="js/eye.js"></script>
    <script type="text/javascript" src="js/utils.js"></script>
    <script type="text/javascript" src="js/layout.js?ver=1.0.2"></script>

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
<input type="text" id="colores">

 <button type="button"  onclick="CambioColores()">Color</button>
 
   <div class="wrapper">
  <div id="customWidget">
 
					<div id="colorSelector2"><div style="background-color: #00ff00"></div></div>
	                <div id="colorpickerHolder2">
	                </div>
  
  </div>
  </div>
  </body>
</html>
