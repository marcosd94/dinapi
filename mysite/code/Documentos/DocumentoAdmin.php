<?php

class DocumentoAdmin extends ModelAdmin {

    private static $menu_title = 'Documentos';

    private static $url_segment = 'documentos';

    private static $managed_models = array (
        'Documento'
    );

    private static $menu_icon = 'mysite/iconos/documento.png';
}