<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'configMenu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="/css/utilerias.css" type="text/css"></link>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="./js/admin/configMenu.js"></script>
 
 </head>
  
  <body>
   
   <h1>Agregar Elemento al Menu</h1>
   <br>
   <br>


    <div class="row">
        <div class="col-md-6">
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" style="width: 100%">
                <div id="contenedoresMenu" style="width: 100%"></div>
                <div id="AgregarotroMenu" style="width: 100%"></div>
        </div>
    </div>
</div>


<input type="hidden" id="NombreMenu" value="">


      <div class="modal fade" id="grupo_dialog" role="dialog" style="width: 100%">
          <div class="modal-dialog">
              <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Nuevo SubMenu</h4>
                  </div>
                      <div class="modal-body">
                          <form id="contact_grupo" action="#" method="POST">
                              Nombre Sub-Menu: &ensp;<input type="text" id="nomSubmenu" size="30"><br/>
                              <br>
                              Accion: &ensp;<input type="text" id="caccionSubmenu" size="30" placeholder="Ejem. jsp/admin/configMenu.jsp"><br/>
                               <br>
                              Titulo: &ensp;<input type="text" id="tituloSubmenu" size="30"><br/>
                          </form>
                      </div>
                      <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="button" id="submitFormGrupo" class="btn btn-default" onclick="NuevoSubmenu()">Guardar</button>
                      </div>
                  </div>
              </div>
          </div>

      <div class="modal fade" id="NuevoMenu" role="dialog" style="width: 100%">
          <div class="modal-dialog">
              <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Nuevo Menu</h4>
                  </div>
                      <div class="modal-body">
                          <form id="contact_grupo" action="#" method="POST">
                              Nombre Menu: &ensp;<input type="text" id="nommenuNuevo" size="30"><br/>
                              <br>
                              Accion: &ensp;<input type="text" id="caccionmenu" size="30" placeholder="Ejem. jsp/admin/configMenu.jsp"><br/>
                               <br>
                              Titulo: &ensp;<input type="text" id="titulomenu" size="30"><br/>
                          </form>
                      </div>
                      <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="button" id="submitFormGrupo" class="btn btn-default" onclick="NuevoMenu()">Guardar</button>
                      </div>
                  </div>
              </div>
 </div>

</body>
</html>
