<?php
class CategoriaBiblioteca extends DataObject {
  private static $db = array (
    'Categoria' => 'Varchar(255)',    
    'ColorCategoria' => 'Varchar(255)'
    
  );

  private static $singular_name = "Categoria de bibliotecas";

  private static $plural_name = "Categorias de bibliotecas";

  
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
      'ID' => 'ID',
      'Categoria' => 'Categoria',
      'ColorCategoria' => 'Color Categoria'
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Categoria', 'Nombre de la categoria'),
        TextField::create('ColorCategoria', 'Color de la categoria')
      );

    return $fields;
  }

  function getCMSValidator() {
      return new RequiredFields(array('Categoria', 'ColorCategoria'));
  }
}
