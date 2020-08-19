<?php

	class AcordeonPage extends Page{
		static $icon = 'mysite/iconos/articulos.png';

		private static $db = array(
			'TituloPadre' => 'Varchar(255)',
			'TituloAnexo' => 'Varchar(255)',
			'ContenidoSuperior' => 'HTMLText'
		);

		private static $description = 'Página con estilo de acordeon con contenido desplegable';

		private static $singular_name = "Página con acordeón";
		
		private static $has_one = array (
			'Imagen' => 'Image',
			'Anexo' => 'File'
		);

		private static $has_many = array (
			'Desplegables' => 'Acordeon'
		);
		
		public function getCMSFields() {
				$fields = parent::getCMSFields();
				$fields->addFieldToTab('Root.Main',TextField::create('TituloPadre','Titulo padre de la página'),'Content');
				$fields->addFieldToTab('Root.Main',UploadField::create('Imagen','Imagen para la página'),'Content');
				$fields->addFieldToTab('Root.Desplegables', GridField::create(
				'Desplegables',
				'Desplegables en esta página',
				$this->Desplegables(),
				GridFieldConfig_RecordEditor::create()
				));
				
				
				/* $fields->addFieldToTab('Root.Main', $uploadField = UploadField::create('Anexo', 'Anexo para la página'),'Content'); */
        		$uploadField = UploadField::create('Anexo', 'Anexo para la página');
				$uploadField->setFolderName('acordeon/archivos-anexos');
				$fields->addFieldToTab('Root.Main',$uploadField,'Content');

				$fields->addFieldToTab('Root.Main',TextField::create('TituloAnexo','Titulo para el anexo'),'Content');
				//$fields->removeFieldFromTab('Root.Main','Content');
				$fields->addFieldToTab('Root.Main', HTMLEditorField::create('ContenidoSuperior', 'Contenido para mostrar arriba de los desplegables'),'Content');
				/* $fields->addFieldToTab(
					'Root.Upload',  
					$uploadField = new UploadField(
						$name = 'Anexo',
						$title = 'Anexo para la página'
					)   
				);
				$uploadField->setFolderName('acordeon/archivos-anexos'); */
				$fields->fieldByName('Root.Main.Content')->setTitle('Contenido para mostrar debajo de los desplegables');
				
			return $fields;
		}

		function getCMSValidator() {
			return new RequiredFields(array('Imagen'));
		}

	}
	class AcordeonPage_Controller extends Page_Controller{

	}
?>