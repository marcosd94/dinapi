<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

      public function PaginasPorTipo($class) {
       $pages = $class::get();
       return $pages->count() ? $pages : false; 
      }

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

	public function getFullURL(){
		return ($_SERVER['REQUEST_URI']);
	}

	private static $allowed_actions = array (
		'FormularioContacto','FormularioSuscripcion','Formulario'
	);


  public function FormularioContacto() {
    // file_put_contents('php://stderr', print_r('Formulario: ' . $this->TipoFormulario, TRUE));
    $form = Form::create(
        $this,
        __FUNCTION__,
        FieldList::create(
            TextField::create('Nombre', 'Nombre'),
            TextField::create('Telefono', 'Teléfono'),
            TextField::create('Cedula', 'Nro. de Cédula'),
            EmailField::create('Email', 'Dirección de e-mail'),
            TextAreaField::create('Mensaje', 'Mensaje')
        ),
        FieldList::create(
            FormAction::create('enviarFormulario','Enviar')
                ->setUseButtonTag(true)
                ->addExtraClass('btn btn-primary btn-lg')
        ),
        RequiredFields::create('Nombre','Telefono','Email', 'Mensaje')
    )
    ->addExtraClass('formulario-contacto');

    foreach($form->Fields() as $field) {
        $field->addExtraClass('form-control')
               ->setAttribute('placeholder', $field->getName().'*');
		if($field->getName()=="Cedula"){
			$field->addExtraClass('form-control')
				   ->setAttribute('placeholder', 'Nro. de '.$field->getName());
		}
    }

    return $form;
  }

  public function enviarFormulario($data, $form) {
    $mensaje = MensajeContacto::create();
    $form->saveInto($mensaje);
    $mensaje->write();
    // $destinatario = $this->$destinatarioContacto;

    $email = new Email(); 


    $config = SiteConfig::current_site_config(); 

    // Email::set_mailer(new LocalMailer());

    $asunto = 'Mensaje de contacto de  ' . $data["Nombre"] . ' - ' . $data["Email"];
    $email->setTo($config->EmailContacto); 
    $email->setFrom('contacto@copacons.com.py'); 
    $email->setSubject($asunto); 
    $email->setTemplate('MensajeContacto');
    $email->populateTemplate(new ArrayData(array(
        'Mensaje' => $mensaje,
        'FechaEnvio' => date('y-m-d H:i:s')
    )));    

    $email->send(); 
/*
	if (!mail($email)){
		
		return array(
			'MensajeFormulario' => '<div class="alert alert-success" role="alert">Tu mensaje fue enviado <i class="fa fa-smile-o"></i></div>',
			'FormularioContacto' => ''
		);
	}else{
		echo '<script>window.location.href = "index.php";</script>';
	}*/
    return array(
        'MensajeFormulario' => '<div class="alert alert-success" role="alert">Tu mensaje fue enviado <i class="fa fa-smile-o"></i></div>',
        'FormularioContacto' => ''
    );
  }
  
  /*FROM SUSCRIPCION*/
		
		  public function FormularioSuscripcion() {
			$form2 = Form::create(
				$this,
				__FUNCTION__,
				FieldList::create(
					EmailField::create('Email', 'Dirección de e-mail')
				),
				FieldList::create(
					FormAction::create('enviarFormularioSuscripcion','OK')
						->setUseButtonTag(true)
						->addExtraClass('btn btn-success')
				),
				RequiredFields::create('Email')
			)
			->addExtraClass('input-group')

			->addExtraClass('formulario-suscripcion');

			foreach($form2->Fields() as $field) {
				$field->addExtraClass('form-control')
					   ->setAttribute('placeholder', 'email@email.com');            
			}

			return $form2;
		  }

		public function enviarFormularioSuscripcion($data, $form2) 
		{
			$mensaje = MensajeContacto::create();
			$form2->saveInto($mensaje);
			$mensaje->Nombre = 'Suscripción';
			$mensaje->Mensaje = 'Suscripción';
			$mensaje->write();
			// $destinatario = $this->$destinatarioContacto;

			//$email = new Email(); 


			$config = SiteConfig::current_site_config(); 

			// Email::set_mailer(new LocalMailer());

			/*$asunto = 'Solicitud de Suscripción al Boletín de  '. ' - ' . $data["Email"];
			$email->setTo($config->EmailContacto); 
			$email->setFrom('suscripcion@copacons.com.py'); 
			$email->setSubject($asunto); 
			$email->setTemplate('MensajeSuscripcion');
			$email->populateTemplate(new ArrayData(array(
				'Email' => $data["Email"],
				'FechaEnvio' => date('y-m-d H:i:s')
			)));    

			$email->send(); 

			return array(
				'MensajeFormularioSuscripcion' => '<div class="alert alert-success" role="alert">Tu suscripcion fue enviada <i class="fa fa-check-circle-o"></i></div>',
				'FormularioSuscripcion' => ''
			);
			*/
			
			try 
			{
				 $mail = new PHPMailer(true);  
				  
				 $body='<table border="0" cellpadding="0" cellspacing="0" id="templateContainer">
						<tr>
							<td align="center" valign="top">
								<!-- BEGIN HEADER // -->
								<table border="0" cellpadding="10" cellspacing="0" width="100%" id="templateHeader">
									<tr>
										<td valign="top" align="center" class="headerContent">
											<h2 style="text-align: center; padding: 10px;">Solicitud de Suscripción al Boletín</h2>
										</td>
									</tr>
								</table>
								<!-- // END HEADER -->
							</td>
						</tr>
						<td align="center" valign="top">
								<table border="0" cellpadding="10" cellspacing="0" width="100%" id="templateBody">
									<tr>
										<th align="left">Email</th>
										<th align="left">Fecha</th>
									</tr>
									<tr>
										<td>'.$data["Email"].'</td>
										<td>'.date('y-m-d H:i:s').'</td>
									</tr>
								</table>
							</td>
					</table>';         
				  $mail->Host = "mail.copacons.com.py";
				  $mail->SMTPAuth = false;                          
				  $mail->SMTPSecure = "ssl";                           
				  $mail->Port = 25;                                   
				  $mail->From = "suscripcion@copacons.com.py";
				  $mail->FromName = "Copacons";
				  $mail->CharSet = 'UTF-8';
				  
				  $mail->addAddress($config->EmailContacto);
				  $mail->isHTML(true);
				  $mail->Subject = 'Solicitud de Suscripción al Boletín de  '. ' - ' . $data["Email"]; 
				  $mail->Body = $body;

				  $resultado = $mail->send();

				  if($resultado) {
					return array(
						'MensajeFormularioSuscripcion' => '<div class="alert alert-success" role="alert">Tu suscripcion fue enviada <i class="fa fa-check-circle-o"></i></div>',
						'FormularioSuscripcion' => ''
					);
				  } else {
					return array(
						'MensajeFormularioSuscripcion' => '<div class="alert alert-danger" role="alert">Tu suscripcion no fue enviada <i class="fa fa-thumbs-o-down"></i></div>',
						'FormularioSuscripcion' => ''
					);
				  }
			} catch (phpmailerException $e) {
						
					return array(
						'MensajeFormularioSuscripcion' => '<div class="alert alert-danger" role="alert">Tu suscripcion no fue enviada <i class="fa fa-thumbs-o-down"></i></div>',
						'FormularioSuscripcion' => ''
					);
			} catch (Exception $e) {
						
					return array(
						'MensajeFormularioSuscripcion' => '<div class="alert alert-danger" role="alert">Tu suscripcion no fue enviada <i class="fa fa-thumbs-o-down"></i></div>',
						'FormularioSuscripcion' => ''
					);
			}
		}
		  
		  /*FIN DEL FORM*/
		  

		/*FORMULARIO DE CONTACTO */
		public function Formulario() { 
			$form = Form::create(
					$this,
					__FUNCTION__,
					FieldList::create(
						TextField::create('Nombre', 'Nombre'),
						EmailField::create('Email', 'Dirección de e-mail')
						->setAttribute('padding-top', '0'),
						TextField::create('Teléfono,','Teléfono'),
						TextAreaField::create('Mensaje', 'Mensaje')
					),
					FieldList::create(
						FormAction::create('submit2','Enviar')
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
	
	
	
		public function submit2($data, $form) { 
			$mensaje = MensajeContacto::create();
			$form->saveInto($mensaje);
			$mensaje->write();
			
			$config = SiteConfig::current_site_config();
			
			$email = new Email(); 
			SS_Log::log("Dammit, an issue with variable ".$var, SS_Log::WARN);
			$email->setTo($config->EmailContacto); 
			$email->setFrom($data['Email']); 
			$email->setSubject("Mensaje de {$data["Nombre"]}"); 
			$body='<table border="0" cellpadding="0" cellspacing="0" id="templateContainer">
				<tr>
					<td align="center" valign="top">
						<!-- BEGIN HEADER // -->
						<table border="0" cellpadding="10" cellspacing="0" width="100%" id="templateHeader">
							<tr>
								<td valign="top" align="center" class="headerContent">
									<h2 style="text-align: center; padding: 10px;">Solicitud de Suscripción al Boletín</h2>
								</td>
							</tr>
						</table>
						<!-- // END HEADER -->
					</td>
				</tr>
				<td align="center" valign="top">
						<table border="0" cellpadding="10" cellspacing="0" width="100%" id="templateBody">
							<tr>
								<th align="left">Nombre</th>
								<th align="left">Mensaje</th>
								<th align="left">Email</th>
								<th align="left">Fecha</th>
							</tr>
							<tr>
								<td>'.$data["Nombre"].'</td>
								<td>'.$data['Mensaje'].'</td>
								<td>'.$data['Email'].'</td>
								<td>'.date('y-m-d H:i:s').'</td>
								
							</tr>
						</table>
					</td>
			</table>';
			$messageBody = " 
				<p><strong>Nombre:</strong> {$data['Nombre']}</p> 
				<p><strong>Mensaje:</strong> {$data['Mensaje']}</p> 

				
			"; 
			$email->setBody($body); 
			$email->send(); 
			/*SS_Log::log("Dammit, an issue with variable ".$var, SS_Log::WARN);*/
			return array(
				'MensajeFormularioPopUp' => '<div class="alert alert-success" role="alert">Tu mensaje fue enviado <i class="fa fa-smile-o"></i></div>',
				'Formulario' => ''
			);
		}
	
		/*PARA FOOTER SUCURSALES*/
    public function ListaSucursales() { 
        return SucursalObject::get();
    }
	 public function ListaPreguntasFrecuentes() {
		return PreguntaFrecuente::get();
	 }
	public function ListaEnlacesUtiles() {
	   return EnlaceUtil::get();
	}
	/*RETORNA LOS NUMEROS DE WHATSAPP DISPONIBLES */
	public function ListaNumerosWhatsapp (){
		return Telefono::get();
	}

		/**/

	public function get_permalink($id)
	{
		$page = Page::get()->byID($id);
		return $page ? $page->Link() : false;
	}

	
	public function convertirNumero($numero)
	{	
		//595985123456
		$numero  = "0".substr($numero,3);
		//0985123456
		$primer = substr($numero,0 , 4);
		//0985		
		$segundo = substr($numero,4 , 3);
		//123		
		$tercero = substr($numero,7  , 3);
		//456  
		return $primer." ".$segundo." ".$tercero;
	}
	
    public function ListaMenus() { 
        return MenuDerecho::get();
	}
	
	
	public function ListaNoticiasBuscador($texto) {
		return Noticia::get()->where(" upper(Titulo) LIKE upper('%" . $texto . "%') OR upper(Content) LIKE upper('%" . $texto . "%')");
	}

}
