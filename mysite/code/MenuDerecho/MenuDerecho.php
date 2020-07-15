<?php
/**
 * MenuDerecho
 * 
 * Clase PHP la cuál extiende las funciones básicas de la Clase DataObject para
 * la persistencia y acceso a los datos de la BD
 * 
 * Clase para crear objetos que van a formar parte del menu
 * superior derecho de la pagina web en el cual se puede definir
 * links internos o externos
 * 
 * @package    MenuDerecho
 */
class MenuDerecho extends DataObject {

/**
 * 
 * db
 * 
 * define los campos correspondientes a la clase que se crearan en la base 
 * de datos
 */
  private static $db = array (
    'Titulo' => 'Varchar(255)',
    'LinkInterno' => 'Int',
    'LinkExterno' => 'Varchar(255)',
    'Padre' => 'Boolean',
    'Hijo' => 'Boolean',
    'Destacado' => 'Boolean'
  );

  private static $singular_name = "Menu derecho";

  private static $plural_name = "Items menu derecho";
  
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



  /**
   * 
   * summary_fields
   * 
   * define los campos que se mostraran en la grilla de visualizacion de contenidos
   * cargados para esta clase en el administrador del sitio
   */
  private static $summary_fields = array (
      'ID' => 'ID',
      'Titulo' => 'Titulo',
      'LinkInterno' => 'Link Interno',      
      'LinkExterno' => 'Link Externo',
      'Destacado.Nice' => 'Destacado'
  );

  /**
   * 
   * getCMSFields
   * 
   * define tipos de inputs que se tendran en el formulario de carga para esta clase
   * en esta funcion se define el tipo de input y a que campo de la clase corresponde
   */
  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Titulo', 'Titulo'),
        TreeDropdownField::create('LinkInterno', 'Link a página interna', "SiteTree"),
        TextField::create('LinkExterno', 'Link a página externa'),
        FieldGroup::create(
          CheckboxField::create('Padre','Desea marcar este item como padre?')
        )->setTitle('Menu Padre')->setName('Menu Padre'),
        FieldGroup::create(
          CheckboxField::create('Hijo','Desea marcar este item como menú hijo?')
        )->setTitle('Menu hijo')->setName('Menu hijo'),
        FieldGroup::create(
          CheckboxField::create('Destacado','Desea marcar este item como destacado?')
        )->setTitle('Destacado')->setName('Destacado')
    );
    return $fields;
  }

  /**
   * 
   * getCMSValidator
   * 
   * define los campos obligatarios en el formulario de carga para esta clase
   */
  function getCMSValidator() {
      return new RequiredFields(array('Titulo'));
  }
  
  public function getHijos() {
    return MenuDerecho::get()->filter(array('Hijo' => True));
  }

}
