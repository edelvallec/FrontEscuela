var gOptions = {
  ip:'http://localhost:8080',		
  uploadLogo:'/BackEnd_CoreEsc/resources/menu/CambioLogo/'
}


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


function CambioLogo(){
	
	  var objFile = $("#imgLogo");
	  var file = objFile[0].files[0];
	  var formData = new FormData();
  	  formData.append('file', file);
  	  var xhr = new XMLHttpRequest();
	  xhr.open('POST', gOptions.ip+gOptions.uploadLogo);
	  xhr.onload = function () {
	    //TODO show the progress
	};
	xhr.onreadystatechange = function () {
	    if (xhr.readyState === 4) {
	    	alert("Se cambio correctamente la imagen, sera redireccionado para mostrarse el cambio.");
	    }
	};
	xhr.upload.onprogress = function (event) {
	    //TODO show the progress
	};

	xhr.send(formData);
  
}