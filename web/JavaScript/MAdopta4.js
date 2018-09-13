  /*function(e,i,f) {

  }
  (e,i,f) => {
    console.log(e,i,f)
  }*/
  document.addEventListener('DOMContentLoaded', () => {
    let boxesOptions = {
       inDuration: 200,
       outDuration: 140

    }
    let boxes = document.querySelectorAll('.materialboxed')
    let boxesInstances = M.Materialbox.init(boxes)


    let modals = document.querySelectorAll('.modal')
    let modalInstances = M.Modal.init(modals)

    let dropdowns = document.querySelectorAll('.dropdown-trigger')
    let dropdownsInstances = M.Dropdown.init(dropdowns)

    let parallax = document.querySelectorAll('.parallax')
    let parallaxInstances = M.Parallax.init(parallax)
    
    /*Para el carrusel automatico*/
    let carruselOp ={
        duration:400,
        interval:5000,
    };
    let carrusel = document.querySelectorAll('.slider');
    let carruselInstances= M.Slider.init(carrusel, carruselOp);
    var ins= M.Slider.getInstance(carrusel);
    ins.pause();
    ins.start();
    ins.next();
    ins.prev();
    ins.destroy();

    let botones = document.querySelectorAll('.fixed-action-btn');
    let botonesInstances = M.FloatingActionButton.init(botones, {
      direction: 'left'
    });
    instance = M.FloatingActionButton.getInstance(botones);
    instance.open();
    instance.close();
    instance.destroy();
  }) ;

/*paralax
$('.pushpin-demo-nav').each(function() {
    var $this = $(this);
    var $target = $('#' + $(this).attr('data-target'));
    $this.pushpin({
      top: $target.offset().top,
      bottom: $target.offset().top + $target.outerHeight() - $this.height()
    });
  });

  $(document).ready(function(){
    $('.pushpin').pushpin();
  });
  /*metodos paralax
  $('.target').pushpin('methodName');
  $('.target').pushpin('methodName', paramName);
  
  /*imagen ventana
  

$(document).ready(function(){
  $('.perrote').materialbox();
  });
  /*Segunda ventana

  $(function(){
    $('.modal').modal();
  }); 
*/