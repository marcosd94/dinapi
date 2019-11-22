<?php
class Actividad extends DataObject {
  private static $db = array (
    'Nombre'=> 'Varchar(255)',
    'Fecha' => 'Date',
    'Lugar' => 'Varchar(255)',
    'Hora'  => 'Time'
  );
  
  public function canEdit() {
      return true;
  }

  public function canDelete() {
      return true;
  }

  public function canCreate(){
      return true;
  }

  public function canPublish(){
      return true;
  }

  public function canView(){
      return true;
  }
  
  private static $singular_name = "Actividad";

  private static $plural_name = "Actividades";

  private static $has_one = array (
    'Calendario' => 'Calendario',
    'Imagen' => 'Image'
  );
  private static $summary_fields = array (
      'Imagen.CMSThumbnail' => '',
      'Nombre' => 'Nombre',
      'Fecha.Nice' => 'Fecha',
      'Hora.Nice' => 'Hora',
      // 'Calendario.Nombre' => 'Calendario',
      'Lugar' => 'Dirección / Lugar'
  );

  private static $default_sort = 'Fecha DESC';

  public function getCMSFields() {
    $calendarios = Calendario::get();
    $fields = FieldList::create(
        TextField::create('Nombre', 'Actividad'),
        TextField::create('Lugar', 'Dirección'),
        DateField::create('Fecha', 'Fecha') ->setConfig('showcalendar', true),
        TimePickerField::create('Hora', 'Hora'),
        $uploader = UploadField::create('Imagen'),
        DropdownField::create('CalendarioID', 'Tipo de actividad', $calendarios
          ->Map('ID','Nombre'))
                ->setEmptyString('(Elegir un calendario)')
    );

    $uploader->setFolderName('img-actividades');
    $uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Nombre', 'Fecha', 'Lugar', 'Hora', 'Calendario'));
  }

  function getColor(){
    return $this->Calendario->getColor();
  }
}
