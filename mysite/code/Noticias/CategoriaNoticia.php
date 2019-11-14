<?php
class CategoriaNoticia extends DataObject {
  private static $db = array (
    'Categoria' => 'Varchar(255)'
    
  );

  private static $singular_name = "Categoria de noticias";

  private static $plural_name = "Categorias de noticias";



  private static $summary_fields = array (
      'Categoria' => 'Categoria'
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Categoria', 'Nombre de la categoria')
      );

    return $fields;
  }

  function getCMSValidator() {
      return new RequiredFields(array('Categoria'));
  }
}
