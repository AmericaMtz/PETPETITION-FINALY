    var Vete = document.getElementById("Vete");
    var Pase = document.getElementById("Pase");
    var Este = document.getElementById("Este");
    

function habilitar(){
    
    if (document.getElementById("Vete").checked == true){
        document.getElementById("Desc1").disabled= false;
       
    }
    else{
        document.getElementById("Desc1").disabled= true;
        document.getElementById("Desc1").required= true;
    }
    
    if (document.getElementById("Pase").checked == true){
        document.getElementById("Desc2").disabled= false;
    }
    else{
        document.getElementById("Desc2").disabled= true;
    }
    
    if (document.getElementById("Este").checked == true){
        document.getElementById("Desc3").disabled= false;
    }
    else{
        document.getElementById("Desc3").disabled= true;
    }
}
