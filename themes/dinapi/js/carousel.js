
$(document).ready(function () { 

    $('#prueba-prev').on('click', function (e) {
        e.preventDefault();
        e.stopPropagation();
    $('#carouselExampleIndicators').carousel('prev');
    });
    
    $('#prueba-next').on('click', function (e) {
        e.preventDefault();
        e.stopPropagation();
    $('#carouselExampleIndicators').carousel('next');
    });
    
    $('#profesion-input').on('click',"button.bs-placeholder", function(e){
        buscarProfesion();
    })
    
    
    var ruta = window.location.href;
    if(ruta.indexOf("centro-de-noticias")!=-1){
        
        $('#/dinapi/centro-de-noticias/').addClass('current');
    }else{

        $('#/dinapi/contacto/').addClass('current');
    }

});