<?php

	class NoticiaPage extends Page{
		static $icon = 'mysite/iconos/news.png';

		private static $db = array(
			'Titulo' => 'Varchar(255)'
		);

		private static $description = 'Página para noticias';

		private static $singular_name = "Página de noticias";
		
		

		private static $has_many = array (
			'Noticias' => 'Noticia'
		);
		
		public function getCMSFields() {
				$fields = parent::getCMSFields();
				$fields->addFieldToTab('Root.Main',TextField::create('Titulo','Titulo para de la página'),'Content');
				$fields->addFieldToTab('Root.Noticias', GridField::create(
				'Noticias',
				'Noticias en esta página',
				$this->Noticias(),
				GridFieldConfig_RecordEditor::create()
				));
				
			return $fields;
		}

		function getCMSValidator() {
			return new RequiredFields(array('Imagen'));
		}

	}
	class NoticiaPage_Controller extends Page_Controller{
			
  
		public function ListaNoticiasDestacadas() {
			return Noticia::get()->filter(array('Destacado' => true));
		  }

	}
?>