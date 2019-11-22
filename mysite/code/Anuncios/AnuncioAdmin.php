<?php

class AnuncioAdmin extends ModelAdmin {

    private static $menu_title = 'Anuncios';

    private static $url_segment = 'anuncios';

    private static $managed_models = array (
        'Anuncio'
    );

    private static $menu_icon = 'mysite/iconos/anuncios.png';
}