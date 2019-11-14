<?php
class ArchivoPage extends Page {
  static $icon = 'mysite/iconos/pdf.png';

  private static $db = array(
    'Titulo' => 'Varchar(255)'
  );

  /*private static $summary_fields = array (
      'TipoProducto' => 'TipoProducto'
  );*/

  private static $description = 'Página de archivos';

  private static $singular_name = "Página de archivos";

  private static $has_one = array (
	  'Imagen' => 'Image'
  );

  private static $has_many = array (
    'Archivos' => 'Archivo',
  );

  public function getCMSFields() {
    	$fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main',TextField::create('Titulo','Titulo de la página'),'Content');
        $fields->addFieldToTab('Root.Main',UploadField::create('Imagen','Imagen para la página'),'Content');
      $fields->addFieldToTab('Root.Archivos', GridField::create(
        'Archivos',
        'Archivos en esta página',
        $this->Archivos(),
        GridFieldConfig_RecordEditor::create()
      ));
    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Titulo','Imagen'));
  }

}
class ArchivoPage_Controller extends Page_Controller {
		
		
}
?>