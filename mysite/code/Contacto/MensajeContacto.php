 <?php
class MensajeContacto extends DataObject {

  private static $db = array (
    'Nombre' => 'Varchar(255)',
    'Apellido' => 'Varchar(255)',
    'Email' => 'Varchar(255)',
    'Tema' => 'Varchar(255)',
    'Documento' => 'Varchar(255)',
    'Telefono' => 'Varchar(255)',
    'Mensaje' => 'Text'
  );
  private static $default_sort = 'Created DESC';

  private static $singular_name = "Mensaje de contacto";

  private static $plural_name = "Mensajes de contacto";

  private static $summary_fields = array (
    'Nombre' => 'Nombre',
    'Apellido' => 'Apellido',
    'Created' => 'Fecha de envío',
    'Email' => 'Email',
    'Tema' => 'Tema',
    'Documento' => 'Documento',
    /*'Socio' => 'Socio', */
    'Telefono' => 'Telefono',
    'Mensaje' => 'Mensaje'
  );

}
