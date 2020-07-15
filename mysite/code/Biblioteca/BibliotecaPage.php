<?php
/**
 * BibliotecaPage
 * 
 * Clase PHP la cuál extiende las funciones básicas de la Clase SiteTree para
 * ser desplegada en el arbol del sitio y la parte publica de la pagina
 * 
 * Clase para crear objetos para generar una pagina de noticias 
 * 
 * @package    Biblioteca
 */

	class BibliotecaPage extends Page{
		static $icon = 'mysite/iconos/desplegable-page.png';
  
		/**
		 * 
		 * db
		 * 
		 * define los campos correspondientes a la clase que se crearan en la base 
		 * de datos
		 */
		private static $db = array(
			'Titulo' => 'Varchar(255)'
		);

		private static $description = 'Página para bibliotecas';

		private static $singular_name = "Página de bibliotecas";
		  
		/**
		 * 
		 * getCMSFields
		 * 
		 * define tipos de inputs que se tendran en el formulario de carga para esta clase
		 * en esta funcion se define el tipo de input y a que campo de la clase corresponde
		 */
		public function getCMSFields() {
				$fields = parent::getCMSFields();
				$fields->addFieldToTab('Root.Main',TextField::create('Titulo','Titulo para de la página'),'Content');
				
			return $fields;
		}

	}
	/**
	 * BibliotecaPage_Controller
	 * 
	 * Clase PHP la cuál extiende las funciones básicas de la Clase Page_Controller para
	 * actuar como controlador de la pagina
	 * 
	 * @package    Biblioteca
	 */
	class BibliotecaPage_Controller extends Page_Controller{
			
  
		/**
		 * 
		 * ListaBibliotecas
		 * 
		 * lista todas las bibliotecas
		 */
		public function ListaBibliotecas() {
			return Biblioteca::get();
		}

	}
?>