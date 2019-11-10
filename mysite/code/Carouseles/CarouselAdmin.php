<?php

class CarouselAdmin extends ModelAdmin {

    private static $menu_title = 'Carousel';

    private static $url_segment = 'carousel';

    private static $managed_models = array (
        'Carousel'
    );

    private static $menu_icon = 'mysite/iconos/video.png';
}