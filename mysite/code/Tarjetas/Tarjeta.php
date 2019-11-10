<?php
class Tarjeta extends DataObject {
  private static $db = array (
    'Titulo' => 'Varchar(255)',
    'Subtitulo' => 'Varchar(255)',
    'LinkInterno' => 'Int',
    'LinkExterno' => 'Varchar(255)'
  );

  private static $singular_name = "Tarjeta";

  private static $plural_name = "Tarjetas";

  private static $has_one = array (
    'Pagina' => 'TarjetaPage',    
	  'Imagen' => 'Image'
  );
  private static $summary_fields = array (
      'Titulo' => 'Titulo',
      'LinkInterno' => 'Link Interno',      
      'LinkExterno' => 'Link Externo',
      'Imagen.CMSThumbnail' => 'Imagen del carousel'
  );


  public function getCMSFields() {
    $fields = FieldList::create(
      TextField::create('Titulo', 'Titulo'),
      TextField::create('Subtitulo', 'Subtitulo para la tarjeta'),
      TreeDropdownField::create('LinkInterno', 'Link a página interna', "SiteTree"),
      TextField::create('LinkExterno', 'Link a página externa'),
      $uploader = UploadField::create('Imagen', 'Imagen que se mostrará en la tarjeta')
    );

    $uploader->setFolderName('imagenes-tarjeta');
    $uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Titulo', 'Imagen'));
  }
}
