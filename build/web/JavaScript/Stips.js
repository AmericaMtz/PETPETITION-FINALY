$(document).ready(function(){

	$("#banner").css({"height":$(window).height() + "px"});

	var flag = false;
	var scroll;

	$(window).scroll(function(){
		scroll = $(window).scrollTop();

		if(scroll > 150){
			if(!flag){
				$("#logo").css({"margin-top": "-5px", "width": "60px","height":"60px"});

				$("header").css({"background-color": "#20BABA"});
				flag = true;
			}
		}else{
			if(flag){
				$("#logo").css({"margin-top": "120px", "width": "250px","height":"250px"});

				$("header").css({"background-color": "transparent"});
				flag = false;
			}
		}


	});

});
$(document).ready(function(){
    $("#perrito1").hover(function(){
        $("#perrito1").css({"opacity": "1"});
        $("#perrito2").css({"opacity": "0.7", "-moz-animation": ".4s linear", "-webkit-animation": ".4s ease-out", "transition": ".4s linear", "visibility": "visible"});
        $(".Grandos").css({"opacity": "1"});
 
    }, function (){
        $("#perrito1").css({"opacity": "1"});
         $("#perrito2").css({"opacity": "0", "-moz-animation": ".4s linear", "-webkit-animation": ".4s ease-out", "transition": ".4s linear", "visibility": "visible"});
        $(".Grandos").css({"opacity": "0"});
    });
    });
    
$(document).ready(function(){
    $("#gatito1").hover(function(){
        $("#gatito1").css({"opacity": "1"});
        $("#gatito2").css({"opacity": "0.7", "-moz-animation": ".4s linear", "-webkit-animation": ".4s ease-out", "transition": ".4s linear", "visibility": "visible"});
        $
        $(".Grandos").css({"opacity": "1"});
    }, function (){
        $("#gatito1").css({"opacity": "1"});
         $("#gatito2").css({"opacity": "0", "-moz-animation": ".4s linear", "-webkit-animation": ".4s ease-out", "transition": ".4s linear", "visibility": "visible"});
        $(".Grandos").css({"opacity": "0"});
    });
    });
$(document).ready(function(){
    $("#pez1").hover(function(){
        $("#pez1").css({"opacity": "1"});
        $("#pez2").css({"opacity": "0.7", "-moz-animation": ".4s linear", "-webkit-animation": ".4s ease-out", "transition": ".4s linear", "visibility": "visible"});
        $(".Grandos").css({"opacity": "1"});
    }, function (){
        $("#pez1").css({"opacity": "1"});
         $("#pez2").css({"opacity": "0", "-moz-animation": ".4s linear", "-webkit-animation": ".4s ease-out", "transition": ".4s linear", "visibility": "visible"});
        $(".Grandos").css({"opacity": "0"});
    });
    });
$(document).ready(function(){
    $("#cone1").hover(function(){
        $("#cone1").css({"opacity": "1"});
        $("#cone2").css({"opacity": "0.7", "-moz-animation": ".4s linear", "-webkit-animation": ".4s ease-out", "transition": ".4s linear", "visibility": "visible"});
        $(".Grandos").css({"opacity": "1"});
    }, function (){
        $("#cone1").css({"opacity": "1"});
         $("#cone2").css({"opacity": "0", "-moz-animation": ".4s linear", "-webkit-animation": ".4s ease-out", "transition": ".4s linear", "visibility": "visible"});
        $(".Grandos").css({"opacity": "0"});
    });
    });
