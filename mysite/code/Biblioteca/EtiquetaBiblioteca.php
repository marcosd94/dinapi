<?php
class EtiquetaBiblioteca extends DataObject {
  private static $db = array (
    'Etiqueta' => 'Varchar(255)'
    
  );

  private static $singular_name = "Etiqueta de bibliotecas";

  private static $plural_name = "Etiquetas de bibliotecas";

  
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
      'Etiqueta' => 'Etiqueta'
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Etiqueta', 'Nombre de la Etiqueta')
      );

    return $fields;
  }

  function getCMSValidator() {
      return new RequiredFields(array('Etiqueta'));
  }
}
