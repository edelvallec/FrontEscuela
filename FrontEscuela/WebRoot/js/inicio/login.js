var gOptions = {
  ip:'http://localhost:8080',		
  loginUser: '/BackEnd_CoreEsc/resources/user/valuser/'
}

function valLogin(){
	
	$.get(gOptions.ip+gOptions.loginUser+$("#inputuser").val()+"/"+$("#inputPassword").val(),
			  function(data){
	
			    if(data.success.user=='true'){
			    	$("#principal").load(data.success.url);
			    }else{
			    	$('#aviso').css('display','block');
			    }
			  });
	
}
