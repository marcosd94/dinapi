<?php

class MensajeContactoAdmin extends ModelAdmin {

    private static $menu_title = 'Mensajes de Contactos';

    private static $url_segment = 'mensaje_contacto_home';

    private static $managed_models = array (
        'MensajeContacto'
    );

    private static $menu_icon = 'mysite/iconos/contacto.png';
}