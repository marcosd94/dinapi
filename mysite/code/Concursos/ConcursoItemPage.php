<?php
class ConcursoItemPage extends Page {
  static $icon = 'mysite/iconos/biblioteca.png';

  private static $db = array(
    'Titulo' => 'Varchar(255)'
  );

  /*private static $summary_fields = array (
      'TipoProducto' => 'TipoProducto'
  );*/

  private static $description = 'Página de concursos individuales';

  private static $singular_name = "Página de concurso individual";

  private static $has_one = array (
	  'ImagenCorta' => 'Image',
	  'ImagenCompleta' => 'Image'
  );
  public function getCMSFields() {
    	$fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main',TextField::create('Titulo','Titulo de la página'),'Content');
        $fields->addFieldToTab('Root.Main',UploadField::create('ImagenCorta','Imagen corta para la página'),'Content');
        $fields->addFieldToTab('Root.Main',UploadField::create('ImagenCompleta','Imagen completa para la página'),'Content');
    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Titulo','ImagenCorta', 'ImagenCompleta'));
  }

}
class ConcursoItemPage_Controller extends Page_Controller {
		
		
}
?>