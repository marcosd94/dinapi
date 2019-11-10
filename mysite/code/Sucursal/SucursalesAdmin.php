<?php

class SucuralesAdmin extends ModelAdmin {

    private static $menu_title = 'Sucursales';

    private static $url_segment = 'sucursales';

    private static $managed_models = array (
        'SucursalObject'
    );

    private static $menu_icon = 'mysite/iconos/sucursal.png';
}