<?php
class Anuncio extends DataObject {
  private static $db = array (
    'Titulo' => 'Varchar(255)',
    'LinkInterno' => 'Int',
    'LinkExterno' => 'Varchar(255)'
  );

  private static $singular_name = "Anuncio";

  private static $plural_name = "Anuncios";
  
  public function canEdit() {
      return true;
  }

  public function canDelete() {
      return true;
  }

  public function canCreate(){
      return true;
  }

  public function canPublish(){
      return true;
  }

  public function canView(){
      return true;
  }


  private static $has_one = array (
    'Imagen' => 'Image'
  );

  private static $summary_fields = array (
      'Titulo' => 'Titulo',
      'LinkInterno' => 'Link Interno',      
      'LinkExterno' => 'Link Externo',
      'Imagen.CMSThumbnail' => 'Imagen del anuncio'
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Titulo', 'Titulo'),
        TreeDropdownField::create('LinkInterno', 'Link a página interna', "SiteTree"),
        TextField::create('LinkExterno', 'Link a página externa'),
        $uploader = UploadField::create('Imagen', 'Imagen del anuncio')
    );

    $uploader->setFolderName('imagenes-anuncio');
    $uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

    return $fields;
  }

  function getCMSValidator() {
      return new RequiredFields(array('Imagen'));
  }

}
