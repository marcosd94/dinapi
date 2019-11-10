<?php
class SucursalObject extends DataObject {
  private static $db = array (
    'Nombre'=> 'Varchar(255)',
    'Telefono' => 'Varchar(255)',
    'Direccion' => 'Varchar(255)',
    'HorarioAtencion' => 'Text',
    'Email' => 'Varchar(255)',
    'Latitud'  => 'Varchar(255)',
    'Longitud'  => 'Varchar(255)'
  );
  private static $singular_name = "Sucursal";

  private static $plural_name = "Sucursales";

  private static $has_one = array (
    'Foto' => 'Image'
  );
  private static $summary_fields = array (
      'Foto.CMSThumbnail' => '',
      'Nombre' => 'Nombre',
      'Telefono' => 'Telefono',
      'Email' => 'Email de contacto',
      'Direccion' => 'Dirección',
      'HorarioAtencion' => 'Horario de atención',
      'Latitud' => 'Latitud',
      'Longitud' => 'Longitud'
  );


  public function getCMSFields() {
    $fields = FieldList::create(
        TextField::create('Nombre', 'Nombre de sucursal'),
        TextField::create('Telefono', 'Telefono'),
        TextField::create('Email', 'Email de contacto'),
        TextField::create('Direccion', 'Dirección'),
        TextField::create('HorarioAtencion', 'Horario de atención'),
        TextField::create('Latitud', 'Latitud'),
        TextField::create('Longitud', 'Longitud'),
        $uploader = UploadField::create('Foto')
    );

    $uploader->setFolderName('fotos-surcursales');
    $uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Nombre', 'Direccion', 'HorarioAtencion', 'Latitud', 'Longitud', 'Foto'));
  }
}
