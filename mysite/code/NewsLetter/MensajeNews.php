<?php
class MensajeNews extends DataObject {

  private static $db = array (
    'Email' => 'Varchar(255)'
  );

  private static $singular_name = "Email para News";

  private static $plural_name = "Email para News";

  private static $summary_fields = array (
    'Email' => 'Email'
  );

}
