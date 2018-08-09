$(function() {
    $("#MenuPricipal").load('./jsp/menu/menu.jsp?m='+$("#tiporole").val());
    $("#SubPagina").load('./jsp/menu/subPagina.jsp');
})
