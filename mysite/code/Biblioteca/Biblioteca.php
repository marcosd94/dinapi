<?php
/**
 * Biblioteca
 * 
 * Clase PHP la cuál extiende las funciones básicas de la Clase DataObject para
 * la persistencia y acceso a los datos de la BD
 * 
 * Clase para crear objetos correspondientes a las noticias de la institucion
 * 
 * @package    Biblioteca
 */
class Biblioteca extends DataObject {

  /**
   * 
   * db
   * 
   * define los campos correspondientes a la clase que se crearan en la base 
   * de datos
   */
  private static $db = array (
    'Titulo' => 'Varchar(255)',
    'Descripcion' => 'HTMLText',
    'DescripcionVideos' => 'Varchar(500)',
    'DescripcionImagenes' => 'Varchar(500)',
    'DescripcionDocumentos' => 'Varchar(500)',
    'EnlacesReferencias' => 'HTMLText'     
  );
  
  private static $singular_name = "Biblioteca";

  private static $plural_name = "Bibliotecas";
  
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
    'ImagenPrincipal' => 'Image'
  );

  private static $many_many = array (
    'Videos' => 'File',
    'Imagenes' => 'Image',
    'Documentos' => 'File'
  );

  /**
   * 
   * summary_fields
   * 
   * define los campos que se mostraran en la grilla de visualizacion de contenidos
   * cargados para esta clase en el administrador del sitio
   */
  private static $summary_fields = array (
      'ImagenPrincipal.CMSThumbnail' => 'Imagen de la biblioteca',
      'Titulo' => 'Titulo',
      'DescripcionVideos' => 'Descripcion Videos',
      'DescripcionImagenes' => 'Descripcion Imagenes',
      'DescripcionDocumentos' => 'Descripcion Documentos'
  );

  /**
   * 
   * getCMSFields
   * 
   * define tipos de inputs que se tendran en el formulario de carga para esta clase
   * en esta funcion se define el tipo de input y a que campo de la clase corresponde
   */
  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Titulo', 'Titulo'),
        $uploaderImagenPrincipal = UploadField::create('ImagenPrincipal', 'Imágen principal'),
        HTMLEditorField::create('Descripcion', 'Descripción de la biblioteca'),

        TextareaField::create('DescripcionVideos', 'Descripción de videos'),
        $uploaderVideos = UploadField::create('Videos', 'Videos'),

        TextareaField::create('DescripcionImagenes', 'Descripción imágenes'),
        $uploaderImagenes = UploadField::create('Imagenes', 'Imágenes'),

        TextareaField::create('DescripcionDocumentos', 'Descripción documentos'),
        $uploaderDocumentos = UploadField::create('Documentos', 'Documentos'),
        
        HTMLEditorField::create('EnlacesReferencias', 'Enlaces y referencias de la biblioteca')
      );
      
      $uploaderImagenPrincipal->setFolderName('biblioteca/imagenes-principales');
      $uploaderImagenPrincipal->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

      $uploaderVideos->setFolderName('biblioteca/videos');
      //$uploaderVideos->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

      $uploaderImagenes->setFolderName('biblioteca/imagenes');
      $uploaderImagenes->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));
      
      $uploaderDocumentos->setFolderName('biblioteca/documentos');
      $uploaderDocumentos->getValidator()->setAllowedExtensions(array('pdf'));
      //$uploader->getValidator()->setAllowedExtensions(array('pdf'));

    return $fields;
  }
  /**
   * 
   * getCMSValidator
   * 
   * define los campos obligatarios en el formulario de carga para esta clase
   */
  function getCMSValidator() {
      return new RequiredFields(array('Titulo', 'ImagenPrincipal', 'Descripcion'));
  }

  /**
   * 
   * getEpigrafe
   * 
   * función para obtener un texto resumido del contenido
   * de la noticia para utilizarlo como epigrafe de la noticia
   */
  function getEpigrafe($texto) {
    return substr(strip_tags($texto), 0, 330);
  }

}
