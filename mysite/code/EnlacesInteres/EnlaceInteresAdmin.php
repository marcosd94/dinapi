<?php

class EnlaceInteresAdmin extends ModelAdmin {

    private static $menu_title = 'Enlaces de Interes';

    private static $url_segment = 'enlaces_interes';

    private static $managed_models = array (
        'EnlaceInteres'
    );

    private static $menu_icon = 'mysite/iconos/link2.png';
}