<?php

class ConcursoDetalleController extends Page_Controller {
	private static $allowed_actions = array('index');

	public function index (SS_HTTPRequest $request) {
		$data = $request->requestVars();
		$id = $data["idConcurso"];

		$concurso = Concurso::get()->filter(array('Id' => $id));

		return $this->customise(array('Concurso' => $concurso))->renderWith(array('ConcursoDetalle', 'Page'));
	}
}
?>