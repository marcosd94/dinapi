<?php

class BibliotecaPageController extends Page_Controller {
	private static $allowed_actions = array('index');
	
	function getEpigrafe($texto) {
		return substr(strip_tags($texto), 0, 220);
	}

	public function index (SS_HTTPRequest $request) {
		
		$data = $request->requestVars();
		$busqueda = $data["busqueda"];		
		$paramID= $this->getRequest()->param('ID');
		
		SS_Log::log($busqueda , SS_Log::AUDITORIA);
		$sql = 'SELECT DISTINCT b.*, f.Filename, cb.ID as ID_CATEGORIA, cb.Categoria FROM Biblioteca b 
		LEFT JOIN CategoriaBiblioteca cb ON cb.ID = b.CategoriaID 
		LEFT JOIN Biblioteca_Etiquetas be ON be.BibliotecaID = b.ID
		LEFT JOIN EtiquetaBiblioteca eb ON eb.ID = be.EtiquetaBibliotecaID
		LEFT JOIN File f on f.ID = b.ImagenPrincipalID ';
		if($paramID != ""){
			$sql = $sql. 'WHERE b.CategoriaID = '.$paramID;
		}

		if($busqueda != ""){
			if($paramID != ""){
				$sql = $sql.' AND ( 
					UPPER(b.Titulo) LIKE UPPER(\'%'.$busqueda.'%\') OR 
					UPPER(b.Descripcion) LIKE UPPER(\'%'.$busqueda.'%\') OR
					UPPER(cb.Categoria) LIKE UPPER(\'%'.$busqueda.'%\') OR
					UPPER(eb.Etiqueta) LIKE UPPER(\'%'.$busqueda.'%\'))';
			}else{
				
				$sql = $sql.' WHERE 
					UPPER(b.Titulo) LIKE UPPER(\'%'.$busqueda.'%\') OR 
					UPPER(b.Descripcion) LIKE UPPER(\'%'.$busqueda.'%\') OR
					UPPER(cb.Categoria) LIKE UPPER(\'%'.$busqueda.'%\') OR
					UPPER(eb.Etiqueta) LIKE UPPER(\'%'.$busqueda.'%\')';
			}
		}
		$sql = $sql.' ORDER BY b.FechaOrdenamiento DESC';
		
		$query = DB::query($sql);

		$output = ArrayList::create();
		if ($query) {
			foreach ($query as $item) {
				$output->push( ArrayData::create(array(
					'ID' => $item['ID'],
					'Titulo' => htmlentities($item['Titulo']),
					'Descripcion' => substr(strip_tags($item['Descripcion']), 0, 220).'...',
					'ImagenPrincipal' => $item['Filename'],
					'ID_CATEGORIA' => $item['ID_CATEGORIA'],
					'Categoria' => $item['Categoria']
				)));
			}
		}

		$paginatedProperties = PaginatedList::create(
			$output,
			$request
		  )->setPageLength(12)
		   ->setPaginationGetVar('s');
		
		$labelCategoria = "";
		if($paramID != ""){
			$labelCategoria = CategoriaBiblioteca::get()->byID($paramID)->Categoria;
		}

		return $this->customise(array('busqueda' => $data["busqueda"],
			'ListaBibliotecas' => $paginatedProperties,
			'LabelCategoria' => strtoupper($labelCategoria)))->renderWith(array('BibliotecaPage', 'Page'));
	}
		
	public function ListaCategorias() {
			
		$query = DB::query('SELECT cb.ID, Categoria, ColorCategoria, count(b.CategoriaID) as Cantidad FROM CategoriaBiblioteca cb 
		LEFT JOIN Biblioteca b ON cb.ID = b.CategoriaID
		GROUP BY cb.ID');

		$output = ArrayList::create();
		if ($query) {
			foreach ($query as $item) {
				$output->push( ArrayData::create(array(
					'ID' => $item['ID'],
					'Categoria' => $item['Categoria'],
					'Cantidad' => $item['Cantidad'],
					'ColorCategoria' => $item['ColorCategoria']
				)));
			}
		
			return $output;
		}
	}
	
}
?>