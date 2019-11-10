<?php
class Telefono extends DataObject {


  private static $db = array (
    'Telefono'=> 'Varchar(12)',
    'Mensaje' => 'Text'
  );


  private static $can_be_root = false;


  private static $singular_name = "Telefono";


  private static $plural_name = "Telefonos";


  private static $has_one = array (
    'Imagen' => 'Image'
  );



  private static $summary_fields = array (
      'Telefono' => 'Telefono'
  );




  public function getCMSFields() {

    $fields = parent::getCMSFields();
    $fields = FieldList::create(
      TextField::create('Telefono','Telefono')
          ->setAttribute('maxlength', 12)
          ->setAttribute('placeholder', '595 981 234 567'),
        TextareaField::create('Mensaje','Mensaje')
    );

    return $fields;
  }

  public function number_format($Telefono){
    return number_format($Telefono,0,",",".");
  }
}
