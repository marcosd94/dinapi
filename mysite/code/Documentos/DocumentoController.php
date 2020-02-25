<?php

class DocumentoController extends Page_Controller {
	private static $allowed_actions = array('index');

	public function index (SS_HTTPRequest $request) {
		$data = $request->requestVars();
		$titulo = $data["titulo"];
		$desde = $data["desde"];
		$hasta = $data["hasta"];
		$first = true;
		$where = "";
		if($titulo == "" && $desde == "" && $hasta == ""){
			$resultados = Documento::get();
			return $this->customise(array( 'ListaDocumentos' => $resultados))->renderWith(array('DocumentoTemplate', 'Page'));
		}
		if($titulo != ""){
			$first = false;
			$where = " Titulo LIKE '%". $titulo . "%' ";
		}
		if($desde != ""){
			if(!$first){
				$where = $where." AND ";
			}
			$where = $where." FechaEmision >= '".$desde."'";
			$first = false;
		}
		if($hasta != ""){
			if(!$first){
				$where = $where." AND ";
			}
			$where = $where." FechaEmision <= '".$hasta."'";
			$first = false;
		}

		

		$documentos = Documento::get()->where($where);

		return $this->customise(array('titulo' => $data["titulo"],'desde' => $data["desde"],'hasta' => $data["hasta"],
		'ListaDocumentos' => $documentos))->renderWith(array('DocumentoTemplate', 'Page'));
	}
}
?>