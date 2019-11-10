<?php
class GeneralPage extends Page {
  static $icon = 'mysite/iconos/general-page.png';

  private static $description = 'Página General para todas las paginas';

  private static $singular_name = "Página General para todas las paginas";

  private static $has_one = array (
	  'Imagen' => 'Image', 
  );

  public function getCMSFields() {
    	$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Main',UploadField::create('Imagen','Imagen para la pantalla general'),'Content');

    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Imagen'));
  }

}
class GeneralPage_Controller extends Page_Controller {
		public function ListaEnlacesUtiles() {
		   return EnlaceUtil::get();
		}

}
?>