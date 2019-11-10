<?php
class ContactPage extends Page {
    static $icon = 'mysite/iconos/contacto.png';

  private static $description = 'Página de contacto';

  private static $singular_name = "Página de contacto";

  private static $has_one = array (
      'Imagen' => 'Image', 
  );

  public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main',UploadField::create('Imagen','Imagen para la pantalla general'),'Content');

    return $fields;
  }

  function getCMSValidator() {
    return new RequiredFields(array('Imagen'));
  }

}
class ContactPage_Controller extends Page_Controller {
    private static $allowed_actions = array('Formulario');



    public function ListaSucursales() { 
        return SucursalObject::get();
    }
    public function ListaEnlacesUtiles() {
       return EnlaceUtil::get();
    }


    public function Formulario() { 
        $form = Form::create(
                $this,
                __FUNCTION__,
                FieldList::create(
                    TextField::create('Nombre', 'Nombre'),
                    EmailField::create('Email', 'Dirección de e-mail'),
                    TextAreaField::create('Mensaje', 'Mensaje')
                ),
                FieldList::create(
                    FormAction::create('submit','Enviar')
                        ->setUseButtonTag(true)
                        ->addExtraClass('btn btn-primary btn-lg')
                ),
                RequiredFields::create('Nombre','Email', 'Mensaje')
            )
            ->addExtraClass('formulario-contacto');

            foreach($form->Fields() as $field) {
                $field->addExtraClass('form-control')
                       ->setAttribute('placeholder', $field->getName().'*');
            }

            return $form;
    }



    public function submit($data, $form) { 
        $mensaje = MensajeContacto::create();
        $form->saveInto($mensaje);
        $mensaje->write();
        
		$config = SiteConfig::current_site_config();
        
        $email = new Email(); 
        SS_Log::log("Dammit, an issue with variable ".$var, SS_Log::WARN);
        $email->setTo($config->EmailContacto); 
        $email->setFrom($data['Email']); 
        $email->setSubject("Mensaje de {$data["Nombre"]}"); 

        $messageBody = " 
            <p><strong>Nombre:</strong> {$data['Nombre']}</p> 
            <p><strong>Mensaje:</strong> {$data['Mensaje']}</p> 
        "; 
        $email->setBody($messageBody); 
        $email->send(); 
        /*SS_Log::log("Dammit, an issue with variable ".$var, SS_Log::WARN);*/
        return array(
            'MensajeRespuesta' => '<p>Gracias por su mensaje.</p>',
            'Formulario' => ''
        );
    }


}