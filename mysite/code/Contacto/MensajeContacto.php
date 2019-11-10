 <?php
class MensajeContacto extends DataObject {

  private static $db = array (
    'Nombre' => 'Varchar(255)',
    'Telefono' => 'Varchar(255)',
    /*'Socio' => 'Varchar(255)', */
    'Email' => 'Varchar(255)',
    'Mensaje' => 'Text'
  );

  private static $singular_name = "Mensaje de contacto";

  private static $plural_name = "Mensajes de contacto";

  private static $summary_fields = array (
    'Nombre' => 'Nombre',
     'Telefono' => 'Telefono',
    /*'Socio' => 'Socio', */
    'Email' => 'Email',
    'Mensaje' => 'Mensaje'
  );

}
