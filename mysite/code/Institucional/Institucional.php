<?php
class Institucional extends DataObject {
  private static $db = array (
    'Titulo' => 'Varchar(255)',
    'LinkInterno' => 'Int',
    'LinkExterno' => 'Varchar(255)'
  );

  private static $singular_name = "Institucional";

  private static $plural_name = "Institucionales";

  private static $has_one = array (
    'Pagina' => 'InstitucionalPage'
  );
  private static $summary_fields = array (
      'Titulo' => 'Titulo',
      'LinkInterno' => 'Link Interno',      
      'LinkExterno' => 'Link Externo'
  );


  public function getCMSFields() {
    $fields = FieldList::create(
      TextField::create('Titulo', 'Titulo'),
      TreeDropdownField::create('LinkInterno', 'Link a página interna', "SiteTree"),
      TextField::create('LinkExterno', 'Link a página externa')
    );
    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Titulo'));
  }
}
