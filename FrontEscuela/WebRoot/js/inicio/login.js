function valLogin(){
	alert("entraa");
	$.get("http://localhost:8080/BackEnd_CoreEsc/resources/user/valuser/"+$("#inputuser").val()+"/"+$("#inputPassword").val(),
			  function(data){
		alert("si");
			    if(data.success.user=='true'){
			    	$("#principal").load(data.success.url);
			    }else{
			    	$('#aviso').css('display','block');
			    }
			  });
	
}
