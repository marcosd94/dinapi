<?php

class NoticiaAdmin extends ModelAdmin {

    private static $menu_title = 'Noticias';

    private static $url_segment = 'noticia';

    private static $managed_models = array (
        'Noticia','CategoriaNoticia'
    );

    private static $menu_icon = 'mysite/iconos/news.png';
}