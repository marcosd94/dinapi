<?php

class MensajeNewsAdmin extends ModelAdmin {

    private static $menu_title = 'Correos Newsletter';

    private static $url_segment = 'mensaje_news';

    private static $managed_models = array (
        'MensajeNews'
    );

    private static $menu_icon = 'mysite/iconos/news.png';
}