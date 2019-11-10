<?php
class EnlaceInteres extends DataObject {
  private static $db = array (
    'Titulo'=> 'Varchar(255)',
    'Link' => 'Varchar(255)'
  );

  private static $singular_name = "Enlace de Interés";

  private static $plural_name = "Enlaces de Interés";

  private static $has_one = array (
    'Imagen' => 'Image'
  );

  private static $summary_fields = array (
      'Titulo' => 'Titulo',
      'Link' => 'Varchar(255)',
      'Imagen.CMSThumbnail' => 'Imagen del anuncio'
  );

  public function getCMSFields() {

    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Titulo', 'Titulo'),
        TextField::create('Link','Link'),
        $uploader = UploadField::create('Imagen', 'Imagen de enlace')
    );

    $uploader->setFolderName('imagenes-enlace-interes');
    $uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

    return $fields;
  }

  function getCMSValidator() {
      return new RequiredFields(array('Titulo', 'Link', 'Imagen'));
  }
}
