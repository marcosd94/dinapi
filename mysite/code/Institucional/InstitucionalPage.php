<?php
class InstitucionalPage extends Page {
  static $icon = 'mysite/iconos/institucional.png';

  private static $db = array(
    'Titulo' => 'Varchar(255)'
  );

  /*private static $summary_fields = array (
      'TipoProducto' => 'TipoProducto'
  );*/

  private static $description = 'Página institucional';

  private static $singular_name = "Página institucional";

  private static $has_one = array (
	  'Imagen' => 'Image'
  );

  private static $has_many = array (
    'Institucionales' => 'Institucional',
  );

  public function getCMSFields() {
    	$fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main',TextField::create('Titulo','Titulo de la página'),'Content');
        $fields->addFieldToTab('Root.Main',UploadField::create('Imagen','Imagen para la página'),'Content');
      $fields->addFieldToTab('Root.Institucionales', GridField::create(
        'Institucionales',
        'Items institucionales en esta página',
        $this->Institucionales(),
        GridFieldConfig_RecordEditor::create()
      ));
    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Titulo','Imagen'));
  }

}
class InstitucionalPage_Controller extends Page_Controller {
		
		
}
?>