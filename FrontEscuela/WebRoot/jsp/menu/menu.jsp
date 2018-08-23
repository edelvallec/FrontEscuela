<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String m = request.getParameter("m"); 

System.out.println("Tipo desde menu: "+m);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Menu</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script type="text/javascript" src="./js/menu/menu.js"></script>
  <link type="text/css" href="menu.css" rel="stylesheet" />
   <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script type="text/javascript" src="menu.js"></script>



<style>
{ margin:0;
    padding:0;
}
body { background:#ECF0F1; }
div#menu { margin:5px auto; }


div#menu {
    height:45px;
    background:url(images/main-bg.png) repeat-x;
}

div#menu ul {
    margin: 0;
    padding: 0;
    list-style: none;
    float: left;
}
div#menu ul.menu {
    padding-left: 30px;
}

div#menu li {
    position: relative;
    z-index: 9;
    margin: 0;
    padding: 0 5px 0 0;
    display: block;
    float: left;
}
div#menu li:hover>ul {
    left: -2px;
}

div#menu a {
    position: relative;
    z-index: 10;
    height: 45px;
    display: block;
    float: left;
    line-height: 45px;
    text-decoration: none;
    font: normal 15px Trebuchet MS;
}
div#menu a:hover, div#menu a:hover span { color: #fff; }

div#menu a:hover { color: rgb(218,219,222); }
div#menu li.current a {}


div#menu span {
    display: block;
    cursor: pointer;
    background-repeat: no-repeat;
    background-position: 95% 0;
}
div#menu ul ul a.parent span {
    background-position:95% 8px;
    background-image: url(images/item-pointer.gif);
}
div#menu ul ul a.parent:hover span {
    background-image: url(images/item-pointer-mover.gif);
}

/* menu::level1 */
div#menu a {
    padding: 0 10px 0 10px;
    line-height: 30px;
    color: #e5e5e5;
}
div#menu span {
    margin-top: 5px;

    color: #333;
}
div#menu ul a:hover span {
    color: #333;
}
div#menu ul ul span {
    color: rgb(169,169,169);
}
div#menu ul ul a:hover span {
    color: rgb(218,219,222);
}

div#menu li { background: url(images/main-delimiter.png) 98% 4px no-repeat; }
div#menu li.last { background: none; }

/* menu::level2 */
div#menu ul ul li { background: none; }
div#menu ul ul {
    position: absolute;
    top: 38px;
    left: -999em;
    width: 163px;
    padding: 5px 0 0 0;
    background: rgb(45,45,45);
    margin-top:1px;
}
div#menu ul ul a {
    padding: 0 0 0 15px;
    height: auto;
    float: none;
    display: block;
    line-height: 24px;
    color: rgb(169,169,169);
}
div#menu ul ul span {
    margin-top: 0;
    padding-right: 15px;
    _padding-right: 20px;
    color: rgb(169,169,169);
}
div#menu ul ul a:hover span {
    color: #fff;
}
div#menu ul ul li.last { background: none; }
div#menu ul ul li {
    width: 100%;
}

/* menu::level3 */
div#menu ul ul ul {
    padding: 0;
    margin: -38px 0 0 163px !important;
    margin-left:172px;
}

/* colors */
div#menu ul ul ul { background: rgb(41,41,41); }
div#menu ul ul ul ul { background: rgb(38,38,38); }
div#menu ul ul ul ul { background: rgb(35,35,35); }

/* lava lamp */
div#menu li.back {
    background: url(images/lava.png) no-repeat right -44px !important;
    background-image: url(images/lava.gif);
    width: 13px;
    height: 44px;
    z-index: 8;
    position: absolute;
    margin: -1px 0 0 -5px;
}
div#menu li.back .left {
    background: url(images/lava.png) no-repeat top left !important;
    background-image: url(images/lava.gif);
    height: 44px;
    margin-right: 8px;
}

.botonimagen{
  background-image:url(images/salir.png);
  background-repeat:no-repeat;
  height:85px;
  width:80px;
  background-position:center;
  
}

</style>







 </head>
  
  <body>
  

<table width="100%" >  
  


<tr>
<td width="15%"> 
    <img  src="images/avatar-01.jpg" width="110px" height="110px">
</td>
<td width="85%">   
<div id="menu" >



<ul class="menu"></ul>
     <ul  style="line-height: 43px;float:right;">
     <li>&nbsp;&nbsp;Bienvenido:&nbsp; <%= session.getAttribute( "user" ) %>&nbsp;
     &nbsp;</li><a href="#" onclick="window.location.reload(true);"><span class="dashicons dashicons-admin-users">Salir</span></a>
     </ul>
</div>

</td>
</tr>
</table>

<input type="hidden" id="idtipo" value="<%=m%>">

</body>  
</html>
