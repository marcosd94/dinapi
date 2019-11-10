<?php

	class AcordeonPage extends Page{
		static $icon = 'mysite/iconos/articulos.png';

	  private static $description = 'Página con estilo de acordeón, utilizando subpáginas';

	  private static $singular_name = "Artículo con acordeón";
	
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


	class AcordeonPage_Controller extends Page_Controller{
		public function ListaEnlacesUtiles() {
		   return EnlaceUtil::get();
		}

	}
?>