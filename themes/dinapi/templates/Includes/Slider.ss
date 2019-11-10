<div id="myCarousel" class="carousel slide fullwidthbanner-container contenedor-image-slider" data-ride="carousel">
	<!-- Indicators -->
	
	<ol class="carousel-indicators">
	<% loop $ListaDestacados %>
		<li data-target="#myCarousel" data-slide-to="$Pos(0)" <% if $Pos(0) == 0 %> class="active" <% end_if %> ></li>
	<% end_loop %>
	</ol>

	<a href="$Link">
		<img class="first-slide img-responsive" src="$ImagenSlider.CroppedImage(1903,800).URL"/>
	</a>


	<div class="carousel-inner texto-centrado-slider">		
		<% loop $ListaDestacados %>
		<div class="item <% if $Pos(0) == 0 %> active <% end_if %>">
			
				<h1 class="slider-title" style="color:white">$Nombre</h1>
				<h2 class="slider-subtitle" style="color:white;margin-top:-25px;">$Descripcion</h2>

		</div>
		<% end_loop %>
	</div>

</div><!-- /.carousel -->
