document.addEventListener('DOMContentLoaded', () => {
 
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

