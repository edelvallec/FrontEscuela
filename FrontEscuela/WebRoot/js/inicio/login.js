function valLogin(){
	
	$.get("http://localhost:8080/BackEnd_CoreEsc/resources/user/valuser/"+$("#inputuser").val()+"/"+$("#inputPassword").val(),
			  function(data){
	
			    if(data.success.user=='true'){
			    	$("#principal").load(data.success.url);
			    }else{
			    	$('#aviso').css('display','block');
			    }
			  });
	
}
