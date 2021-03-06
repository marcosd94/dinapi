<?php
class TemaEje extends DataObject {
  private static $db = array (
    'Nombre'=> 'Varchar(255)',
    'Link' => 'Int',
    'Eje' => 'Varchar(255)'
  );

  private static $singular_name = "Tema del Eje";

  private static $plural_name = "Temas de los Ejes";

  private static $summary_fields = array (
      'Nombre' => 'Nombre',      
      'Eje' => 'Eje'
  );

  public function getCMSFields() {

    $options = array(
      '1' => 'EJE 1',
      '2' => 'EJE 2',
      '3' => 'EJE 3'
    );
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Nombre', 'Nombre'),
        TreeDropdownField::create('Link', 'Link a página deseada', "SiteTree"),
        DropdownField::create('Eje', 'Eje correspondiente', $options)->setEmptyString('Elige un eje')
    );

    return $fields;
  }

  function getCMSValidator() {
      return new RequiredFields(array('Link', 'Eje'));
  }

}
