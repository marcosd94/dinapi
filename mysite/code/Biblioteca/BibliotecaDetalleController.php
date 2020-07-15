<?php

class BibliotecaDetalleController extends Page_Controller {
	private static $allowed_actions = array('index');

	public function index (SS_HTTPRequest $request) {
		$data = $request->requestVars();
		$id = $data["idBiblioteca"];

		$biblioteca = Biblioteca::get()->filter(array('Id' => $id));

		return $this->customise(array('Biblioteca' => $biblioteca))->renderWith(array('BibliotecaDetalle', 'Page'));
	}
}
?>