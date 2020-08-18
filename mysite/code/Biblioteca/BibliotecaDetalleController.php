<?php

class BibliotecaDetalleController extends Page_Controller {
	private static $allowed_actions = array('index');

	public function index (SS_HTTPRequest $request) {
		$data = $request->requestVars();
		$id = $data["idBiblioteca"];

		$biblioteca = Biblioteca::get()->filter(array('Id' => $id));

		return $this->customise(array('Biblioteca' => $biblioteca))->renderWith(array('BibliotecaDetalle', 'Page'));
	}
	public function ListaCategorias() {
			
		$query = DB::query('SELECT cb.ID, Categoria, count(b.CategoriaID) as Cantidad, b.CategoriaID as CategoriaID FROM CategoriaBiblioteca cb 
		LEFT JOIN Biblioteca b ON cb.ID = b.CategoriaID
		GROUP BY cb.ID');

		$output = ArrayList::create();
		if ($query) {
			foreach ($query as $item) {
				$output->push( ArrayData::create(array(
					'ID' => $item['ID'],
					'Categoria' => $item['Categoria'],
					'Cantidad' => $item['Cantidad'],
					'CategoriaID' => $item['CategoriaID']
				)));
			}
		
			return $output;
		}
	}
}
?>