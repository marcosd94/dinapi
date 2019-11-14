<?php

class CategoriaNoticiaAdmin extends ModelAdmin {

    private static $menu_title = 'Categorias de Noticias';

    private static $url_segment = 'categoria-noticia';

    private static $managed_models = array (
        'CategoriaNoticia'
    );

    private static $menu_icon = 'mysite/iconos/ticket.png';
}