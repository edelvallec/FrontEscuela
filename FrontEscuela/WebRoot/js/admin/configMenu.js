var gOptions = {
  ip:'http://localhost:8080',		
  menuAdmin: '/BackEnd_CoreEsc/resources/menu/getMenu/1',
  nuevoSubMenu: '/BackEnd_CoreEsc/resources/menu/NuevoSubMenu/',
  eliminarSubMenu: '/BackEnd_CoreEsc/resources/menu/EliminarSubMenu/',
  nuevoMenu: '/BackEnd_CoreEsc/resources/menu/NuevoMenu/',
  eliminarMenu:'/BackEnd_CoreEsc/resources/menu/EliminarMenu/'
}



$(function() {

	BuscoMenu();
	
	

})


function BuscoMenu(){
	
	$.get(gOptions.ip+gOptions.menuAdmin,
    function(data)
	 {
	 
	   var insertar = true;
	   var menu = JSON.parse(JSON.stringify(data));
	   var k =0;	
	   for (var i = 0; i < menu.length; i++) {

		   var menus  = '<div class="panel panel-default" style="width: 100%">'
			    menus +='<div class="panel-heading" role="tab" id="headingOne"'+i+' style="width: 100%">'
			    menus +='<h4 class="panel-title">'
			    menus +='<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"'+i+' aria-expanded="true" aria-controls="collapseOne"'+i+'>'
			    menus +='Item Menu - '+menu[i].cMenu
			    menus +='</a>'
			    menus +='</h4>'
			    menus +='</div>'
			    menus +='<div id="collapseOne"'+i+' class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne"'+i+'>'
			    menus +='<div class="panel-body">'
		   var jsonSub =JSON.parse(JSON.stringify(menu[i].cSubMenu));
	
		   for (var j = 0; j <jsonSub.length; j++) {
			   
			   menus +='<p><b> Item Submenu &ensp; - &ensp; '+jsonSub[j].cSubMenu+'</b> &ensp; &ensp;&ensp;&ensp;<a href="#" onclick="EliminarSubmenu(\''+jsonSub[j].cSubMenu+'\')">Eliminar</a></p>'    
		   
		   }
		 	    menus +='</div>'
			    menus +='</div><a href="#" data-toggle="modal" data-target="#grupo_dialog" onclick="NombreMenu(\''+menu[i].cMenu+'\')"><h4>+Nuevo SubMenu</h4></a>'
			    menus +='</div><a href="#"  onclick="EliminarMenu(\''+menu[i].cMenu+'\')"><h4>&ensp;-&ensp;Eliminar Item: &ensp;'+menu[i].cMenu+'</h4></a>';

			$("#contenedoresMenu").append(menus);
			if(insertar){
				
				var Nmenus  = '<a href="#" data-toggle="modal" data-target="#NuevoMenu" onclick="NombreMenu(\''+menu[i].cMenu+'\')"><h4>&ensp;+&ensp;Agregar Item al Menu</h4></a>';
				$("#AgregarotroMenu").append(Nmenus);
				
				insertar = false;
				
			}
			
		   
	   }
	
	 });
}

function NombreMenu(Menu){
	
	$("#NombreMenu").val(Menu);
}

function NuevoSubmenu(){
	
	
	var path = $("#caccionSubmenu").val().split(/\//g).join('_');
	
	
	$.get(gOptions.ip+gOptions.nuevoSubMenu+$("#NombreMenu").val()+'/'+$("#nomSubmenu").val()+'/\''+path+'\'/'+$("#tituloSubmenu").val(),
		    function(data)
			 {
		
		         
		        if(data.Respuesta=='true'){
		        
		        	$("#grupo_dialog").css("display", "none");
		        	$("#nomSubmenu").val('');
		        	$("#caccionSubmenu").val('');
		        	$("#tituloSubmenu").val('');
		        	alert("Se agrego correctamente el Submenu, sera redireccionado para cargar el nuevo Sub Menu...");
		        	location.reload();
		        	
		        }else{
		        	alert("Error: No fue posible agregar correctamente el submenu");
		        }
		         
		
			 }); 
		 
	
		
}

function EliminarSubmenu(nombre){
	

	$.get(gOptions.ip+gOptions.eliminarSubMenu+nombre,
		    function(data)
			 {
		
		         
		        if(data.Respuesta=='true'){
		        
		        	alert("Submenu Eliminado, Se redireccionara para cargar de nuevo el submenu...");
		        	location.reload();
		        	
		        }else{
		        	
		        	alert("Error al Eliminar el Submenu");
		        }
		         
		
			 }); 

	
}

function NuevoMenu(){
	
	var path="sinAccion";	

  if($("#caccionmenu").val().length>0){	
       path = $("#caccionmenu").val().split(/\//g).join('_');
   }

  $.get(gOptions.ip+gOptions.nuevoMenu+$("#nommenuNuevo").val()+'/\''+path+'\'/'+$("#titulomenu").val()+'',
		    function(data)
			 {
		 
		        if(data.Respuesta=='true'){
		        
		        	$("#grupo_dialog").css("display", "none");
		        	$("#nommenuNuevo").val('');
		        	$("#caccionmenu").val('');
		        	$("#titulomenu").val('');
		        	alert("Se agrego correctamente al Menu, sera redireccionado...");
		        	location.reload();
		        	
		        }else{
		        	alert("Error: No fue posible agregar correctamente el Menu");
		        }
		         
		
			 }); 
	
}

function EliminarMenu(Nombre){
	
	$.get(gOptions.eliminarMenu+Nombre,
		    function(data)
			 {
		
		         
		        if(data.Respuesta=='true'){
		        
		        	alert("Item Eliminado, Se redireccionara ...");
		        	location.reload();
		        	
		        }else{
		        	
		        	alert("Error al Eliminar el Item");
		        }
		         
		
			 }); 
	
}