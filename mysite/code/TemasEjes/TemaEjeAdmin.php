<?php

class TemaEjeAdmin extends ModelAdmin {

    private static $menu_title = 'Temas de los Ejes';

    private static $url_segment = 'temas_ejes';

    private static $managed_models = array (
        'TemaEje'
    );

    private static $menu_icon = 'mysite/iconos/temas-ejes.png';
}