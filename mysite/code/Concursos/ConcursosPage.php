<?php
class ConcursosPage extends Page {
  static $icon = 'mysite/iconos/concurso.png';

  private static $db = array(
    'Titulo' => 'Varchar(255)'
  );

  /*private static $summary_fields = array (
      'TipoProducto' => 'TipoProducto'
  );*/

  private static $description = 'Página de concursos';

  private static $singular_name = "Página de concurso";

  private static $has_one = array (
	  'Imagen' => 'Image'
  );
  

  private static $has_many = array (
    'Concursos' => 'Concurso'
  );
  
  public function getCMSFields() {
    	$fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main',TextField::create('Titulo','Titulo de la página'),'Content');
        $fields->addFieldToTab('Root.Main',UploadField::create('Imagen','Imagen para la página'),'Content');
				$fields->addFieldToTab('Root.Concursos', GridField::create(
				'Concursos',
				'Concursos en esta página',
				$this->Concursos(),
				GridFieldConfig_RecordEditor::create()
				));
    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Titulo'));
  }

}
class ConcursosPage_Controller extends Page_Controller {
		
		
}
?>