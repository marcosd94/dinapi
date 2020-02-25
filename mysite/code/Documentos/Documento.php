<?php
class Documento extends DataObject {
  private static $db = array (
    'Titulo' => 'Varchar(255)',
    'FechaEmision' => 'Date'
  );

  private static $singular_name = "Documento";

  private static $plural_name = "Documentos";

  private static $default_sort = 'Created DESC';
  
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

  private static $has_one = array (
    'Pdf' => 'File'
  );

  private static $summary_fields = array (
      'Titulo' => 'Titulo',
      'FechaEmision.Nice' => 'Fecha',
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Titulo', 'Titulo'),
        DateField::create('FechaEmision', 'Fecha de Emisión') ->setConfig('showcalendar', true),
        $uploaderPdf = UploadField::create('Pdf', 'PDF correspondiente al documento')
    );
    
    $uploaderPdf->setFolderName('documentos-pdf');
    $uploaderPdf->getValidator()->setAllowedExtensions(array('pdf'));

    return $fields;
  }

  function getCMSValidator() {
      return new RequiredFields(array('Titulo', 'Pdf','Imagen'));
  }

}
