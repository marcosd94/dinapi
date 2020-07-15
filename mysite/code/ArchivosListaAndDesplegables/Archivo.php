<?php
/**
 * Archivo
 * 
 * Clase PHP la cuál extiende las funciones básicas de la Clase DataObject para
 * la persistencia y acceso a los datos de la BD
 * 
 * Clase para crear objetos con un titulo y documento pdf para ser 
 * desplegado como una archivo
 * 
 * @package    ArchivosListaAndDesplegable
 */
class Archivo extends DataObject {

  /**
   * 
   * db
   * 
   * define los campos correspondientes a la clase que se crearan en la base 
   * de datos
   */
  private static $db = array (
    'Titulo' => 'Text',
    'LinkExterno' => 'Varchar(255)'
  );

  private static $singular_name = "Archivo";

  private static $plural_name = "Archivos";

  private static $default_sort = 'Created DESC';
  
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


  /**
   * 
   * has_one
   * 
   * define las relaciones con otras clases
   */
  private static $has_one = array (
    'Pdf' => 'File',
    'Pagina' => 'ArchivoPage'
  );

  /**
   * 
   * summary_fields
   * 
   * define los campos que se mostraran en la grilla de visualizacion de contenidos
   * cargados para esta clase en el administrador del sitio
   */  
  private static $summary_fields = array (
      'Titulo' => 'Titulo',  
      'LinkExterno' => 'Link Externo'
  );


  /**
   * 
   * getCMSFields
   * 
   * define tipos de inputs que se tendran en el formulario de carga para esta clase
   * en esta funcion se define el tipo de input y a que campo de la clase corresponde
   */
  public function getCMSFields() {
    $fields = FieldList::create(
      TextareaField::create('Titulo', 'Titulo'),
      TextField::create('LinkExterno', 'Link a página externa'),
      $uploaderPdf = UploadField::create('Pdf', 'PDF correspondiente al boletin')
    );
    
    $uploaderPdf->setFolderName('archivos-pdf');
    $uploaderPdf->getValidator()->setAllowedExtensions(array('pdf'));

    return $fields;
  }

  /**
   * 
   * getCMSValidator
   * 
   * define los campos obligatarios en el formulario de carga para esta clase
   */
  function getCMSValidator() {
    return new RequiredFields(array('Titulo'));
  }
}
