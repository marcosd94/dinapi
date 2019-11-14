<?php

class MenuDerechoAdmin extends ModelAdmin {

    private static $menu_title = 'Menu derecho';

    private static $url_segment = 'menu-derecho';

    private static $managed_models = array (
        'MenuDerecho'
    );

    private static $menu_icon = 'mysite/iconos/formulario.png';
}