<?php
/**
 * BibliotecaAdmin
 * 
 * Clase PHP la cuál extiende las funciones básicas de la Clase ModelAdmin para
 * ser desplegada en el menu lateral del administrador web
 * 
 * Clase para crear objetos de la clase Biblioteca
 * 
 * @package    Noticias
 */
class BibliotecaAdmin extends ModelAdmin {

    private static $menu_title = 'Bibliotecas';

    private static $url_segment = 'biblioteca';

    /**
     * 
     * managed_models
     * 
     * define las clases que va a poder manejar el actual item del administrador
     */
    private static $managed_models = array (
        'Biblioteca'
    );

    private static $menu_icon = 'mysite/iconos/desplegable-page.png';
}