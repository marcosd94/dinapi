<?php
class TarjetaSimplePage extends Page {
  static $icon = 'mysite/iconos/ticket.png';

  private static $db = array(
    'Titulo' => 'Varchar(255)'
);

  /*private static $summary_fields = array (
      'TipoProducto' => 'TipoProducto'
  );*/

  private static $description = 'Página para tarjetas simples';

  private static $singular_name = "Página de tarjeta simple";

  private static $has_one = array (
	  'Imagen' => 'Image'
  );

  private static $has_many = array (
    'TarjetasSimples' => 'TarjetaSimple',
  );

  public function getCMSFields() {
    	$fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main',TextField::create('Titulo','Titulo de la página'),'Content');
        $fields->addFieldToTab('Root.Main',UploadField::create('Imagen','Imagen para la página'),'Content');
      $fields->addFieldToTab('Root.TarjetasSimples', GridField::create(
        'TarjetasSimples',
        'TarjetasSimples en esta página',
        $this->TarjetasSimples(),
        GridFieldConfig_RecordEditor::create()
      ));
    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Titulo','Imagen'));
  }

}
class TarjetaSimplePage_Controller extends Page_Controller {
		
		
}
?>