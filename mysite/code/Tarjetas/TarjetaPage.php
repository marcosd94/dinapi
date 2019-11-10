<?php
class TarjetaPage extends Page {
  static $icon = 'mysite/iconos/producto.png';

  private static $db = array(
    'Titulo' => 'Varchar(255)'
);

  /*private static $summary_fields = array (
      'TipoProducto' => 'TipoProducto'
  );*/

  private static $description = 'Página para tarjetas';

  private static $singular_name = "Página de tarjeta";

  private static $has_one = array (
	  'Imagen' => 'Image'
  );

  private static $has_many = array (
    'Tarjetas' => 'Tarjeta',
  );

  public function getCMSFields() {
    	$fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main',TextField::create('Titulo','Titulo de la página'),'Content');
        $fields->addFieldToTab('Root.Main',UploadField::create('Imagen','Imagen para la página'),'Content');
      $fields->addFieldToTab('Root.Tarjetas', GridField::create(
        'Tarjetas',
        'Tarjetas en esta página',
        $this->Tarjetas(),
        GridFieldConfig_RecordEditor::create()
      ));
    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Titulo','Imagen'));
  }

}
class TarjetaPage_Controller extends Page_Controller {
		
		
}
?>