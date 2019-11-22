<?php
class Concurso extends DataObject {


  private static $db = array(
    'Titulo' => 'Varchar(255)'
  );
  
  private static $singular_name = "Concurso";

  private static $plural_name = "Concursos";
  
  //private static $default_sort = 'Created DESC';
  
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
	  'ImagenCorta' => 'Image',
    'ImagenCompleta' => 'Image',
    'Pagina' => 'ConcursosPage'
  );

  private static $summary_fields = array (
      'Titulo' => 'Titulo',
      'ImagenCorta.CMSThumbnail' => 'Imagen corta del concurso',
      'ImagenCompleta.CMSThumbnail' => 'Imagen completa del concurso'
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Titulo', 'Titulo'),
        $uploader = UploadField::create('ImagenCorta','Imagen corta del concurso'),
        $uploaderCompleto = UploadField::create('ImagenCompleta','Imagen completa para del concurso')
      );
      
      $uploader->setFolderName('imagenes-concursos/imagen-corta');
      $uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

      $uploaderCompleto->setFolderName('imagenes-concursos/imagen-completa');
      $uploaderCompleto->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Titulo','ImagenCorta', 'ImagenCompleta'));
  }
}
