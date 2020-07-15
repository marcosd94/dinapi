<?php
class Calendario extends DataObject {
  private static $db = array (
    'Nombre' => 'Varchar(255)',
    'Descripcion' => 'Varchar(255)',
    'Color' => 'Varchar(255)'
  );

  private static $singular_name = "Calendario";

  private static $plural_name = "Calendarios";
  
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


  
  private static $summary_fields = array (
      'Nombre' => 'Nombre',
      'Descripcion' => 'Descripción',
      'Color' => 'Color',
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
  

  private static $has_many = array (
    'Actividad' => 'Actividad'
  );
  public function fortemplate() {
    return $this->getField('Color');
  }
  public function getCMSFields() {
    $options = array(
      '#8cc63e' => 'Verde',
      '#00a89b' => 'Celeste',
      '#f16b3c' => 'Naranja',
      '#1c2d36' => 'Azul',
      '#f8b22e' => 'Amarillo',
      '#da1b1b' => 'Rojo'
    );
    $fields = FieldList::create(
        TextField::create('Nombre'),
        TextareaField::create('Descripcion', 'Descripción'),
        DropdownField::create('Color', 'Color del calendario', $options)->setEmptyString('Elegir un color')
    );

    return $fields;
  }
}
