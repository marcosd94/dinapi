<?php
class PeriodoBoletinMarcaPage extends Page {
  static $icon = 'mysite/iconos/observancia.png';


  /*private static $summary_fields = array (
      'TipoProducto' => 'TipoProducto'
  );*/

  private static $description = 'Periodos de los boletines de marcas';

  private static $singular_name = "Periodo de los boletines de marcas";

  private static $has_many = array (
    'ActosJuridicos' => 'BoletinGeneral',
    'MarcasDocumentosRecibidos' => 'BoletinMarcasDocumentos',
    'LogotiposMarcasRecibidos' => 'BoletinLogotiposMarcas',
    'MovimientosAdministrativos' => 'BoletinMovimientosAdministrativos',
  );

  public function getCMSFields() {
    	$fields = parent::getCMSFields();
      $fields->addFieldToTab('Root.ActosJuridicos', GridField::create(
        'Actos juridicos',
        'Actos juridicos en este periodo',
        $this->ActosJuridicos(),
        GridFieldConfig_RecordEditor::create()
      ));
      $fields->addFieldToTab('Root.MarcasDocumentosRecibidos', GridField::create(
        'Marcas y documentos recibidos',
        'Marcas y documentos recibidos en este periodo',
        $this->MarcasDocumentosRecibidos(),
        GridFieldConfig_RecordEditor::create()
      ));
      $fields->addFieldToTab('Root.LogotiposMarcasRecibidos', GridField::create(
        'Logotipos de marcas recibidas',
        'Logotipos de marcas recibidas en este periodo',
        $this->LogotiposMarcasRecibidos(),
        GridFieldConfig_RecordEditor::create()
      ));
      $fields->addFieldToTab('Root.MovimientosAdministrativos', GridField::create(
        'Movimientos Administrativos',
        'Movimientos Administrativos en este periodo',
        $this->MovimientosAdministrativos(),
        GridFieldConfig_RecordEditor::create()
      ));
    return $fields;
  }


}
class PeriodoBoletinMarcaPage_Controller extends Page_Controller {
		
		
}
?>