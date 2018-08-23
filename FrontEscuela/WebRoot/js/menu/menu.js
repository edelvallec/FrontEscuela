var gOptions = {
  ip:'http://localhost:8080',		
  getMenu: '/BackEnd_CoreEsc/resources/menu/getMenu/'
}

$(function() {
  	$.get(gOptions.ip+gOptions.getMenu+$("#idtipo").val(),
			  function(data)
			  {
		            crearMenu(JSON.stringify(data));
			  });
  	

})





function crearMenu(jsonmenu){
	
var menu = JSON.parse(jsonmenu);	
	
var k =0;	
  for (var i = 0; i < menu.length; i++) {
//pintamos los menus y aca menu le damos de class el menu[i].cMenu,
// para utilizarlo en el momento de agregar el submenu
  var className = menu[i].cMenu.replace(" ","");
    $(".menu").append("<li   class="+className+"><a href='#' class='parent'><span "+menu[i].caccion+">"+menu[i].cMenu+"</span></a></li>")
    
    var jsonSub =JSON.parse(JSON.stringify(menu[i].cSubMenu));
    if(jsonSub.length!=0){
    if(k == 0){
    	//agregamos un <ul> el cual va hacer el contenedor del submenu
    	        $("."+className).append('<ul ></ul>')
    	        k++;
    }
    	//y por ultimo agregamos los item al submenu
    
    

    
    var longitud = (jsonSub.length)-1;
    for (var j = 0; j <jsonSub.length; j++) {
    
    	$("."+className +" ul").append('<li class='+className+'><a href="#" ><span '+jsonSub[j].caccion+'>'+jsonSub[j].cSubMenu+'</span></a></li>')
   
        if(j==longitud){
    	   k=0;
        }
    
     }
    }
}
}


function execMenu(url){
	
	  $("#SubPagina").load(url);
	
}