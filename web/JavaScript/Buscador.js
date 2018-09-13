var consulta= $("#searchTable").DataTable();

//tu funcion a onclickear
function hideSearch() {
    $("#search").fadeOut();
}

$("#inputBusqueda").keyup(function(){
 consulta.search($(this).val()).draw();

    $("body").css({
        "height": "100vh",
        "background": "rgba(0,0,0,0.5)"
        
    })
 if($("#inputBusqueda").val() == ""){
    $("body").css({
        "height": "auto",
        "background-image": "url(../Resourses/Images/fondos/pet.jpg)"
    })

    $("#search").hide();
 }else{
     $("#search").fadeIn();
 }

})