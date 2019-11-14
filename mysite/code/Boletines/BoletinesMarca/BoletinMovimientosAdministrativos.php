<?php
class BoletinMovimientosAdministrativos extends DataObject {
  private static $db = array (
    'Titulo' => 'Varchar(255)',
  );

  private static $singular_name = "Boletin";

  private static $plural_name = "Boletines";

  private static $has_one = array (
    'Pdf' => 'File',
    'Imagen' => 'Image',
    'Pagina' => 'PeriodoBoletinMarcaPage'
  );

  private static $summary_fields = array (
      'Titulo' => 'Periodo'
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields = FieldList::create(
        TextField::create('Titulo', 'Titulo'),
        $uploader = UploadField::create('Imagen', 'Imagen del boletin'),
        $uploaderPdf = UploadField::create('Pdf', 'PDF correspondiente al boletin')
    );

    $uploader->setFolderName('boletines/imagenes-boletines');
    $uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));
    

    $uploaderPdf->setFolderName('boletines/pdf-boletines');
    $uploaderPdf->getValidator()->setAllowedExtensions(array('pdf'));

    return $fields;
  }

  function getCMSValidator() {
      return new RequiredFields(array('Titulo','Pdf'));
  }

}