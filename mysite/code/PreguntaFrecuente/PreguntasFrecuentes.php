<?php

class PreguntasFrecuentesAdmin extends ModelAdmin {

    private static $menu_title = 'Preguntas Frecuentes';

    private static $url_segment = 'preguntas_frecuentes_home';

    private static $managed_models = array (
        'PreguntaFrecuente'
    );

    private static $menu_icon = 'mysite/iconos/pregunta.png';
}