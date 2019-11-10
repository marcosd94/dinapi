<?php

	class HomePage extends Page{

		private static $db = array(
		   	/* 'LinkBiblioteca' => 'Int',
		   	'LeyendaHomePage' => 'Varchar(255)',
		   	'LeyendaHomePageBottom' => 'Int' */
    	);

		private static $has_one = array (
    		/* 'ImagenSlider' => 'Image', 
    		'ImagenBiblioteca' => 'Image',  */    		
  		);

		public function getCMSFields() {
			$fields = parent::getCMSFields();
			/* $fields->addFieldToTab('Root.Main', TreeDropdownField::create("LinkBiblioteca", "Link a la Biblioteca de archivos", "SiteTree"),'Content');
			$fields->addFieldToTab('Root.Main',UploadField::create('ImagenSlider','Imagen para el Slider principal'),'Content');
			$fields->addFieldToTab('Root.Main',UploadField::create('ImagenBiblioteca','Imagen para la Biblioteca'),'Content');
			$fields->addFieldToTab('Root.Main',TextField::create('LeyendaHomePage','Espacio para escribir algo en la Pagina Principal'),'Content');
			$fields->addFieldToTab('Root.Main', TreeDropdownField::create("LeyendaHomePageBottom", "Boton de la Leyenda de la Pagina Principal", "SiteTree"),'Content'); */

			return $fields;
		}

		/* function getCMSValidator() {
		  return new RequiredFields(array('LinkBiblioteca', 'LeyendaHomePageBottom'));
		} */

	}


	class HomePage_Controller extends Page_Controller{
		
		/* private static $allowed_actions = array('FormularioNews');

		public function FormularioNews() { 
			$form = Form::create(
					$this,
					__FUNCTION__,
					FieldList::create(
						EmailField::create('Email', 'Dirección de e-mail')
						//->addExtraClass('input-group')
						
					),	
					FieldList::create(
						FormAction::create('submit','Suscribirse')
							->setUseButtonTag(true)
							->addExtraClass('btn btn-primary btn-lg')
							->setAttribute('style','margin-top:3%')
							
					),
					RequiredFields::create('Email')
				)
				->addExtraClass('form-group');
	
				foreach($form->Fields() as $field) {
					$field->addExtraClass('form-control')
						   ->setAttribute('placeholder', $field->getName().'*');
				}
	
				return $form;
		}
		 
		public function submit($data, $form) { 
			$mensaje = MensajeNews::create();
			$form->saveInto($mensaje);
			$mensaje->write();
			return array(
				'MensajeRespuesta' => '<div class="alert alert-respuesta" role="alert">Gracias por registrarse <i class="fas fa-check"></i></div>'
				
			);
		} */
		
		/* NUEVOOOOOOOOOOO */

		public function ListaTemasDeEjes($eje) {
			return TemaEje::get()->filter(array('Eje' => $eje));
		}

		public function ListaAnuncios() {
			return Anuncio::get();
		}
		
		public function ListaEnlacesInteres() {
			return EnlaceInteres::get();
		}
		
		public function ListaCarousel() {
			return Carousel::get();
		}
		
	}
?>