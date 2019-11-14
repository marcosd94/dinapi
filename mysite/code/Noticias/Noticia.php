<?php
class Noticia extends DataObject {
  private static $db = array (
    'Titulo' => 'Varchar(255)',
    'Categoria' => 'Int',
    'Fecha' => 'Date',
    'Destacado' => 'Boolean',
    'Content' => 'HTMLText'
    
  );

  private static $singular_name = "Noticia";

  private static $plural_name = "Noticias";

  private static $has_one = array (
    'Imagen' => 'Image',
    'Pagina' => 'NoticiaPage'
  );

  private static $summary_fields = array (
      'Titulo' => 'Titulo',
      'Fecha.Nice' => 'Fecha',
      'Destacado.Nice' => 'Destacado'
  );

  public function getCMSFields() {
    $options = array(
      1 => 'Categoria 1',
      2 => 'Categoria 2',
      3 => 'Categoria 3'
    );
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Titulo', 'Titulo'),
        DropdownField::create('Categoria', 'Categoria', CategoriaNoticia::get()->map('ID', 'Categoria'))
        ->setEmptyString('(Seleccione una categoria )'),
        $uploader = UploadField::create('Imagen', 'Foto de la noticia'),
        DateField::create('Fecha', 'Fecha') ->setConfig('showcalendar', true),
        FieldGroup::create(
          CheckboxField::create('Destacado','Desea marcar esta noticia como destacado?')
        )->setTitle('Destacado')->setName('Destacado'),
        HTMLEditorField::create('Content', 'Contenido de la noticia a mostrar')
      );
      
      $uploader->setFolderName('noticias/imagenes-noticias');
      $uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));
      //$uploader->getValidator()->setAllowedExtensions(array('pdf'));

    return $fields;
  }

  function getCMSValidator() {
      return new RequiredFields(array('Titulo'));
  }


  function getEpigrafe($texto) {
    return substr(strip_tags($texto), 0, 330);
  }		
  
  public function ListaNoticiasDestacadas() {
    return Noticia::get()->filter(array('Destacado' => True));
  }
}
