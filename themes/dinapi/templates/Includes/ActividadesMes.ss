<% if ActividadesDelMes %>
	<% loop ActividadesDelMes %>
	<%-- <div class="col-xs-12 col-md-3 actividad" data-calendario="$Calendario.ID">
		<div class="thumbnail">
			<img src="$Imagen.CroppedImage(300,200).URL" alt="...">
			<div class="caption">
				<h5><a href="#modal$ID" data-toggle="modal" role="button">$Nombre</a></h5>
				<p>$Hora<br> $Lugar</p>
			</div>
		</div>
	</div> --%>
		<div  class="col-md-3 col-12 float-left eje-box-outer grid">
			<figure id="boxsup-1" class="eje-box-inner effect-apollo tarjeta_fondo" style="background-color:$Calendario.Color">
				<div class="burbuja" style="background-color:$Calendario.Color;z-index: 1000;">
					<span class="grande">$Fecha.Format('d')</span>
					<br>
					<span>$Fecha.Format('M')</span>
				</div>
				<div class="icono-eje-2">
					<div><img src="$Imagen.CroppedImage(300,150).URL" class="img-fluid calendar-nofade" style="width: 100%;"></div>
					<div class="texto-eje h2 icono-eje-calendar" style="margin-top: 10px;margin-bottom: 0px;">$Nombre</div>
					<div class="calendar-text icono-eje-calendar" >$Hora</div>
					<div class="calendar-text icono-eje-calendar" >$Lugar</div>
				</div>
				<figcaption>
					<%-- <a href="/dinapi/propiedad-industrial/marcas/boletines-de-marcas/">Vea más</a> --%>
				</figcaption>
			</figure>
		</div>
	<% end_loop %>
	<%-- <% loop ActividadesDelMes %>
	<div class="portfolio-modal modal fade" id="modal$ID" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content" style="background-color: rgba(255,255,255,0.8);">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl">
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="modal-body">
						<div class="col-md-8">
							<img src="$Imagen.URL" class="img-responsive img-centered" style="opacity: 1;">
						</div>
						<div class="col-md-4">
							<h2>$Nombre</h2>
							<br/>
							<p>$Fecha - $Hora<br> $Lugar</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<% end_loop %> --%>
<% else %>
	<h2 class="text-center texto-azul" style="color:#114875;margin: 0 auto;"><i class="texto-azul fa fa-frown-o fa-2x"></i><br><strong>No hay Actividades programadas para $MesActual </strong></h2>
<% end_if %>