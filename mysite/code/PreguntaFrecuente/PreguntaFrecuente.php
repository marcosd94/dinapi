<?php
class PreguntaFrecuente extends DataObject {
  private static $db = array (
    'Pregunta'=> 'Varchar(255)',
    'Respuesta' => 'HTMLText'
  );

  private static $singular_name = "Pregunta Frecuente";

  private static $plural_name = "Preguntas Frecuentes";

  private static $summary_fields = array (
      'Pregunta' => 'Pregunta',
      'Respuesta' => 'Respuesta'
  );

  public function getCMSFields() {

    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField ::create('Pregunta', 'Pregunta'),
        new HTMLEditorField('Respuesta')
    );

    return $fields;
  }

  function getCMSValidator() {
      return new RequiredFields(array('Pregunta','Respuesta'));
  }

}
