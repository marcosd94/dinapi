<?php

class ActividadAdmin extends ModelAdmin {

    private static $menu_title = 'Actividades';

    private static $url_segment = 'actividades';

    private static $managed_models = array (
        'Actividad','Calendario'
    );

    private static $menu_icon = 'mysite/iconos/actividades.png';
}