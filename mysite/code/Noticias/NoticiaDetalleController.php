<?php

class NoticiaDetalleController extends Page_Controller {
	private static $allowed_actions = array('index');

	public function index (SS_HTTPRequest $request) {
		$data = $request->requestVars();
		$id = $data["idNoticia"];

		$noticia = Noticia::get()->filter(array('Id' => $id));

		return $this->customise(array('Noticia' => $noticia))->renderWith(array('NoticiaDetalle', 'Page'));
	}
}
?>