<?php

	class PreguntasFrecuentesPage extends Page{
		static $icon = 'mysite/iconos/preguntas.png';

	  private static $description = 'Página con estilo de acordeón, utilizando subpáginas';

	  private static $singular_name = "Pagina de Preguntas Frecuentes";
	
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


	class PreguntasFrecuentesPage_Controller extends Page_Controller{
		public function ListaEnlacesUtiles() {
		   return EnlaceUtil::get();
		}
		public function ListaPreguntasFrecuentes() {
			return PreguntaFrecuente::get();
		 }

	}
?>