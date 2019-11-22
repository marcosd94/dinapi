<?php
class CalendarioPage extends Page {
  // private static $allowed_children = array ('ArticuloInstitucional');

  private static $icon = 'mysite/iconos/actividades.png';

  private static $description = 'Calendario de Todas las Actividades';

  private static $singular_name = "Calendario de Actividades";
}

class CalendarioPage_Controller extends Page_Controller {

	private static $allowed_actions = array (
		'DelDia', 'FiltrarPorMes'
	);
  public function Calendarios() {
    return Calendario::get();
  }

  public function ActividadesDelMes() {
    // $mes date_format(date(), "m");
    // var_dump( date('Y-m-').'01 00:00:00');
    // var_dump( date('Y-m-t').' 23:59:59');
    $s = date('Y') . '-' . date('m') . '-01';
    $fecha = new DateTime($s);
    return  Actividad::get()
      ->filter(array(
          'Fecha:GreaterThanOrEqual' => $fecha->format('Y-m-d').' 00:00:00',
          'Fecha:LessThanOrEqual' => date('Y-m-t').' 23:59:59'
        ))
      ->sort('Fecha')
      ;
  } 

  public function MesActual(){
    $fecha = new DateTime();
    $meses = array("01" => "Enero","02" => "Febrero","03" =>  "Marzo","04" =>  "Abril","05" =>  "Mayo","06" =>  "Junio","07" =>  "Julio","08" =>  "Agosto","09" =>  "Septiembre","10" =>  "Octubre","11" =>  "Noviembre","12" =>  "Diciembre");
    return $meses[$fecha->format('m')] . ', ' . $fecha->format('Y');
  }
  
  public function FiltrarPorMes (SS_HTTPRequest $request){
    $data = $request->requestVars();
    $s = $data["anho"] . '-' . $data["mes"] . '-01';
    $fecha = new DateTime($s);

    $meses = array("01" => "Enero","02" => "Febrero","03" =>  "Marzo","04" =>  "Abril","05" =>  "Mayo","06" =>  "Junio","07" =>  "Julio","08" =>  "Agosto","09" =>  "Septiembre","10" =>  "Octubre","11" =>  "Noviembre","12" =>  "Diciembre");

    $inicio = $fecha->format('Y-m-d') . ' 00:00:00';
    $fin = $fecha->format('Y-m-t') . ' 23:59:59';

    $actividades = Actividad::get()->filter(array(
      'Fecha:GreaterThanOrEqual' => $inicio,
      'Fecha:LessThanOrEqual' => $fin
    ))    ->sort("Fecha");


    return $this->customise(array ('ActividadesDelMes' => $actividades, 'MesActual' => $meses[$data["mes"]] . $fecha->format(', Y')))
              ->renderWith('ActividadesMes');
  }

  public function ListarTodasActividades() {
    return  Actividad::get();
  }
  public function MesActualNro(){
    return date('m');
  }

  public function DelDia (SS_HTTPRequest $request) {
    $actividades = Actividad::get();
    $actividades = $actividades->filter(array(
      'Fecha:GreaterThanOrEqual' => date('Y-m-d').' 00:00:00',
      'Fecha:LessThanOrEqual' => date('Y-m-d').' 23:59:59'
      ));

    if($request->isAjax()) {
      return $this->customise(array ('ListaActividades' => $actividades))
                  ->renderWith('ListaActividadesCalendario');
    }

    return $actividades;
  }

}
