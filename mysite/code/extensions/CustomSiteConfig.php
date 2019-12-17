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
        'LinkedinLink'=> 'Varchar(255)',
        'MostrarPopUp' => 'Boolean'
    );

    private static $has_one = array (
      'ImagenCompleta' => 'Image'
    );

    public function updateCMSFields(FieldList $fields) {
      $fields->addFieldToTab('Root.Main', new TextField('EmailContacto','Emails de contacto (separados por coma)'));

      

      $uploadField = UploadField::create('ImagenCompleta', 'Imagen completa del PopUp');
      $uploadField->setFolderName('imagenes-pop-up');
      $fields->addFieldToTab('Root.Main',$uploadField);

      
      $fields->addFieldToTab('Root.Main',
      FieldGroup::create(
        CheckboxField::create('MostrarPopUp','Desea mostrar el popUp con la imagen determinada en el campo superior?')
      )->setTitle('Mostrar PopUp')->setName('Mostrar PopUp')
      );
      
    }
}
