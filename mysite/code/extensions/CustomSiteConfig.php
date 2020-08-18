<?php

class CustomSiteConfig extends DataExtension {

    private static $db = array(
        'EmailContacto' => 'Varchar(255)',
        'MostrarPopUp' => 'Boolean',
        'VideoLink'=> 'Varchar(255)',
        'ContenidoBiblioteca' => 'HTMLText'  
    );

    private static $has_one = array (
      'ImagenCompleta' => 'Image',
      'ImagenBiblioteca' => 'Image'
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
      
      $fields->addFieldToTab('Root.Main', new TextField('VideoLink','Link del video a mostrar'));

      $uploadFieldBiblioteca = UploadField::create('ImagenBiblioteca', 'Imagen para la biblioteca');
      $uploadFieldBiblioteca->setFolderName('biblioteca/imagenes-pagina');
      $fields->addFieldToTab('Root.Main',$uploadFieldBiblioteca);

      $fields->addFieldToTab('Root.Main', new HTMLEditorField('ContenidoBiblioteca', 'Contenido p&aacute;gina biblioteca'));


      
    }
}
