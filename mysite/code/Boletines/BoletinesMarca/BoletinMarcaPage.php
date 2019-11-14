<?php
class BoletinMarcaPage extends Page {
  static $icon = 'mysite/iconos/sucursal.png';
  
  private static $db = array(
    'TituloPadre' => 'Varchar(255)'
  );
  /*private static $summary_fields = array (
      'TipoProducto' => 'TipoProducto'
  );*/

  private static $description = 'Página de boletines de marcas';

  private static $singular_name = "Página de boletines de marcas";


  private static $has_one = array (
	  'Imagen' => 'Image'
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
      $fields->addFieldToTab('Root.Main',TextField::create('TituloPadre','Titulo de la página padre'),'Content');
      $fields->addFieldToTab('Root.Main',UploadField::create('Imagen','Imagen para la página'),'Content');
  return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('TituloPadre'));
  }

}
class BoletinMarcaPage_Controller extends Page_Controller {
		
		
}
?>