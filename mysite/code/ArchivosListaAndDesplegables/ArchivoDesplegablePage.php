<?php
class ArchivoDesplegablePage extends Page {
  static $icon = 'mysite/iconos/desplegable-page.png';

  private static $db = array(
    'Titulo' => 'Varchar(255)',
    'TituloPadre' => 'Varchar(255)'
  );

  /*private static $summary_fields = array (
      'TipoProducto' => 'TipoProducto'
  );*/

  private static $description = 'Página de archivos desplegables';

  private static $singular_name = "Página de archivos desplegables";

  private static $has_one = array (
	  'Imagen' => 'Image'
  );


  public function getCMSFields() {
    	$fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main',TextField::create('Titulo','Titulo de la página'),'Content');
        $fields->addFieldToTab('Root.Main',TextField::create('TituloPadre','Titulo padre de la página'),'Content');
        $fields->addFieldToTab('Root.Main',UploadField::create('Imagen','Imagen para la página'),'Content');
    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Titulo'));
  }

}
class ArchivoDesplegablePage_Controller extends Page_Controller {
		
		
}
?>