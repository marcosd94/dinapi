<% include HeaderImage %>

<div class="general-margen">
	<div class="row" style="margin-bottom:25px">
		<div class="col-md-5 col-md-offset-1">
			<div class="row center">
				<h2>Envíanos un mensaje</h2>
				<div class="row center formulario-mensaje">
					$MensajeRespuesta
					$Formulario
				</div>
			</div>
		</div>

		<div class="col-md-4  col-md-offset-1">
			<h2 style="text-align:center;">Buscanos en</h2> 
				<% include ContactoInclude %>
		</div>
	</div>
</div>

<div class="row">
	<div id="mapa-sucursales"></div>
</div>


<script>
	var sucursales = [];
	<% loop ListaSucursales %>
		var sucursal = {};
		sucursal.nombre = "{$Nombre}";
		sucursal.latitud = "{$Latitud}";
		sucursal.longitud = "{$Longitud}";
		// sucursal.foto = "{$Foto.CroppedImage(200,150).URL}";
		sucursal.horario = "{$HorarioAtencion}";
		sucursales.push(sucursal);
	<% end_loop %>
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDS-Kv0aScfev682RriwCZxSKcP7b8cIpU"></script>
<script src="$ThemeDir/js/contacto.min.js"></script>


