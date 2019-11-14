<?php
class Acordeon extends DataObject {
  private static $db = array (
    'Titulo' => 'Varchar(255)',
    'Content' => 'HTMLText',
    'TituloAdjunto' => 'Varchar(255)'
    
  );

  private static $singular_name = "Contenido desplegable";

  private static $plural_name = "Contenidos desplegables";

  private static $has_one = array (
    'Adjunto' => 'File',
    'Pagina' => 'AcordeonPage'
  );

  private static $summary_fields = array (
      'Titulo' => 'Titulo'
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Titulo', 'Titulo'),
        HTMLEditorField::create('Content', 'Contenido del item a mostrar'),
        TextField::create('TituloAdjunto', 'Titulo para el archivo adjunto'),
        $uploader = UploadField::create('Adjunto', 'Archivo adjunto')
      );
      
      $uploader->setFolderName('acordeon/archivos-adjuntos');
      //$uploader->getValidator()->setAllowedExtensions(array('pdf'));

    return $fields;
  }

  function getCMSValidator() {
      return new RequiredFields(array('Titulo'));
  }

}
