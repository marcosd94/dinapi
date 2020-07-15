<?php
class ContactPage extends Page {
    static $icon = 'mysite/iconos/contacto.png';

    private static $db = array(
        'Titulo' => 'Varchar(255)'
    );

    private static $description = 'Página de contacto';

    private static $singular_name = "Página de contacto";

    private static $has_one = array (
        'Imagen' => 'Image', 
    );

    public function getCMSFields() {
            $fields = parent::getCMSFields();
            $fields->addFieldToTab('Root.Main',TextField::create('Titulo','Titulo de la página'),'Content');
            $fields->addFieldToTab('Root.Main',UploadField::create('Imagen','Imagen para la página de contacto'),'Content');

        return $fields;
    }

    function getCMSValidator() {
        return new RequiredFields(array('Titulo'));
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
        $options = array(
            'Consulta' => 'Consulta',
            'Reclamo' => 'Reclamo',
            'Sugerencia' => 'Sugerencia'
        );
        $form = Form::create(
                $this,
                __FUNCTION__,
                FieldList::create(
                    TextField::create('Nombre', 'Nombre'),
                    TextField::create('Apellido', 'Apellido'),
                    EmailField::create('Email', 'Dirección de e-mail'),
                    DropdownField::create('Tema', 'Por favor, especifique su necesidad', $options)->setEmptyString('Seleccione una necesidad'),
                    TextField::create('Documento', 'Nro. de Documento'),
                    TextField::create('Telefono', 'Telefono'),
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
        //SS_Log::log("Dammit, an issue with variable ".$var, SS_Log::WARN);
        $email->setTo($config->EmailContacto); 
        $email->setFrom("web@dinapi.gov.py"); 
        //$email->setFrom($data['Email']); 
        $email->setSubject("Mensaje desde el Sitio Web de DINAPI de: {$data["Nombre"]} {$data["Apellido"]}"); 

        $messageBody = "
        <div style=\"width: 75%; margin: 0% 5% 5% 5%;\">
            <div style=\"width:100%;text-align: center;\">
                <img src=\"https://www.dinapi.gov.py/portal/v3/themes/dinapi/img/logo.png\" style=\"width: 25%;height: auto;\">
            </div>
            <div style=\"width:100%;text-align: center; color: #114875; margin-bottom: 30px;\">
                <h1>Mensaje de contacto desde la página web de DINAPI</h1>
            </div>
            <div style=\"width:100%;\">
                <div>
                    <h3 style=\"color: #114875;display: inline-block;margin-top: 0px;\">Nombre: </h3>
                    <p style=\"display: inline-block;margin-top: 0px;\">{$data['Nombre']}</p>
                </div>
                <div>
                    <h3 style=\"color: #114875;display: inline-block;margin-top: 0px;\">Apellido: </h3>
                    <p style=\"display: inline-block;margin-top: 0px;\">{$data['Apellido']}</p>
                </div>
                <div>
                    <h3 style=\"color: #114875;display: inline-block;margin-top: 0px;\">Email: </h3>
                    <p style=\"display: inline-block;margin-top: 0px;\">{$data['Email']}</p>
                </div>
                <div>
                    <h3 style=\"color: #114875;display: inline-block;margin-top: 0px;\">Documento: </h3>
                    <p style=\"display: inline-block;margin-top: 0px;\">{$data['Documento']}</p>
                </div>
                <div>
                    <h3 style=\"color: #114875;display: inline-block;margin-top: 0px;\">Teléfono: </h3>
                    <p style=\"display: inline-block;margin-top: 0px;\">{$data['Telefono']}</p>
                </div>
                <div>
                    <h3 style=\"color: #114875;display: inline-block;margin-top: 0px;\">Tema de contacto: </h3>
                    <p style=\"display: inline-block;margin-top: 0px;\">{$data['Tema']}</p>
                </div>
                <div>
                    <h3 style=\"color: #114875;margin-top:10px\">Mensaje: </h3>
                    <p>{$data['Mensaje']}</p>
                </div>
            </div>
        </div>
        "; 
        $email->setBody($messageBody); 
        $email->send(); 
        /*SS_Log::log("Dammit, an issue with variable ".$var, SS_Log::WARN);*/
        return array(
            'MensajeRespuesta' => "            
                <div class=\"row\"style=\"width: 100%;\">
                    <h2>Gracias por su mensaje {$data["Nombre"]} {$data["Apellido"]}.</h2>
                    <div class=\"col-md-8 col-offset-md-2\">
                        <p style=\"display: inline-block;\"> Su mensaje de contacto con relación al tema
                            <strong>{$data['Tema']}</strong>  fue enviado correctamente &nbsp;&nbsp;
                            <i class=\"fa fa-check fa-2x\" style=\"color:#4BB543;\" aria-hidden=\"true\"></i>
                        </p>
                        <div>
                            <h3 style=\"color: #114875;\">Mensaje: </h3>
                            <p>{$data['Mensaje']}</p>
                        </div>
                        <h3 style=\"color: #114875;\">Sus consultas serán respondidas en la brevedad posible. </h3>
                    </div>
                </div>            
            ",
            'Formulario' => ''
        );
    }


}
