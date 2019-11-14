
<div class="float-left information-header" id="head_marcas" <% if Imagen %> style="background-image: url($Imagen.URL);" <% end_if %>>



	<div class="float-left" id="main-image">
		<!--img src="../../img/logo.png" class="col-md-6 col-sm-12" id="img1" /-->
	</div>
</div>
<div class="col-md-12 clear-section float-left pt-5 " id="information-container">
	<div class="clearfix"></div>
	<div class="col-md-12 bread">
		<%-- <div><a href="#">Inicio</a> / <a href="index.php">Marcas</a> / Aprender</div> --%>
		$Breadcrumbs
	</div>
	<div class="row">
		<div class="col-md-10 offset-md-1 mt-5 information-texto">
			<h2 class="inicial">$Titulo</h2>
			<div class="row center formulario-mensaje">
				$MensajeRespuesta
				$Formulario
			</div>
			<hr />
		</div>
		</div>
	</div>
</div>
      
