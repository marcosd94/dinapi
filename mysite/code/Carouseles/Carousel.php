<?php
class Carousel extends DataObject {
  private static $db = array (
    'Titulo'=> 'Varchar(255)',
    'Descripcion' => 'Varchar(255)',
    'TituloLink' => 'Varchar(255)',
    'Link' => 'Int',

  );

  private static $singular_name = "Banner";

  private static $plural_name = "Banners";
  
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
      'Descripcion' => 'Descripcion',
      'TituloLink' => 'TituloLink',
      'Imagen.CMSThumbnail' => 'Imagen del carousel'
  );

  public function getCMSFields() {

    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Titulo', 'Titulo'),
        TextField::create('Descripcion','Descripcion'),
        TextField::create('TituloLink','Titulo para el link inferior'),
        TreeDropdownField::create('Link', 'Link', "SiteTree"),

        $uploader = UploadField::create('Imagen')
    );

    $uploader->setFolderName('imagenes-carousel');
    $uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

    return $fields;
  }
}
