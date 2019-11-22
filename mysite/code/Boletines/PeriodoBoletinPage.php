<?php
class PeriodoBoletinPage extends Page {
  static $icon = 'mysite/iconos/marco-normativo.png';


  /*private static $summary_fields = array (
      'TipoProducto' => 'TipoProducto'
  );*/

  private static $description = 'Periodos de los boletines';

  private static $singular_name = "Periodo de los boletines";

  private static $has_many = array (
    'Boletines' => 'BoletinGeneral'
  );

  public function getCMSFields() {
    	$fields = parent::getCMSFields();
      $fields->addFieldToTab('Root.Boletines', GridField::create(
        'Boletines',
        'Boletines en este periodo',
        $this->Boletines(),
        GridFieldConfig_RecordEditor::create()
      ));
    return $fields;
  }


}
class PeriodoBoletinPage_Controller extends Page_Controller {
		
		
}
?>