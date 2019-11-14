<?php
class Archivo extends DataObject {
  private static $db = array (
    'Titulo' => 'Varchar(255)',
    'LinkExterno' => 'Varchar(255)'
  );

  private static $singular_name = "Archivo";

  private static $plural_name = "Archivos";

  private static $has_one = array (
    'Pdf' => 'File',
    'Pagina' => 'ArchivoPage'
  );
  private static $summary_fields = array (
      'Titulo' => 'Titulo',  
      'LinkExterno' => 'Link Externo'
  );


  public function getCMSFields() {
    $fields = FieldList::create(
      TextField::create('Titulo', 'Titulo'),
      TextField::create('LinkExterno', 'Link a página externa'),
      $uploaderPdf = UploadField::create('Pdf', 'PDF correspondiente al boletin')
    );
    
    $uploaderPdf->setFolderName('archivos-pdf');
    $uploaderPdf->getValidator()->setAllowedExtensions(array('pdf'));

    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Titulo'));
  }
}
