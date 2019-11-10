<?php

class CustomSiteConfig extends DataExtension {

    private static $db = array(
        'TelefonoContacto' => 'Varchar(255)',
        'MensajeWhatsapp' => 'Varchar(255)',
        'EmailContacto' => 'Varchar(255)',
        'TextoCopyright' => 'Text',
        'FacebookLink' => 'Varchar(255)',
        'InstagramLink' => 'Varchar(255)',
        'TwitterLink' => 'Varchar(255)',
        'LinkedinLink'=> 'Varchar(255)'
    );

    public function updateCMSFields(FieldList $fields) {
      $fields->addFieldToTab('Root.Main', new TextField('EmailContacto','Emails de contacto (separados por coma)'));
      $fields->addFieldToTab('Root.Main', new TextField('TelefonoContacto','Número de contacto para Whatsapp Business (Formato requerido: 595991900700)'));
      $fields->addFieldToTab('Root.Main', new TextareaField('MensajeWhatsapp','Mensaje por defecto que se enviará al Whatsapp Business'));
      $fields->addFieldToTab('Root.Main', new TextField('TextoCopyright','Texto de Copyright (Pie de página)'));
      $fields->addFieldToTab('Root.Main', new TextField('FacebookLink','Facebook (Página de Facebook)'));
      $fields->addFieldToTab('Root.Main', new TextField('InstagramLink','Instagram (Página de Instagram)'));
      $fields->addFieldToTab('Root.Main', new TextField('TwitterLink','Twitter (Página de Twitter)'));
      $fields->addFieldToTab('Root.Main', new TextField('LinkedinLink','Linkedin (Página de Linkedin)'));
    }
}
