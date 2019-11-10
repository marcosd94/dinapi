<?php

class TelefonoAdmin extends ModelAdmin {

    private static $menu_title = 'Whatsapp Business';

    private static $url_segment = 'telefonos';

    private static $managed_models = array (
        'Telefono'
    );

    private static $menu_icon = 'mysite/iconos/whatsapp.png';
}