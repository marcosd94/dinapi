

      <div class="float-left secondary-header head2 head_derechoautor" <% if Imagen %> style="background-image: url($Imagen.URL);" <% end_if %>>

        <div class="header-secondary-image"></div>
        <div class="titulo-pagina-principal ml-5 mt-2 pl-2 pr-5 col-md-4">
          <div class="font-weight-bold">
            $Titulo
          </div>
        </div>

      </div>
      <div
        class="col-md-12 clear-section float-left pt-5 "
        id="secondary-container"
      >
        <div class="clearfix"></div>
<%--         <div class="row">


          <div class="col-md-4 col-12 float-left eje-box-outer grid" onclick="location.href='marcas_aprender.php';">
            <figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-3">
              <div class="icono-eje">
                <div class="col-md-4 offset-md-4 col-4 offset-4 mb-3 mt-4">
                  <img src="$ThemeDir/img/icon_registropoder.png" class="img-fluid">  
                </div>
                <div class="texto-eje h2">Registro de Derecho de Autor y Derechos Conexos</div>
              </div>
              <figcaption>
                <p>
                </p>
                <a href="derecho_autor_registrar.php">Vea más</a>
              </figcaption>
            </figure>
          </div>

          <div class="col-md-4 col-12 float-left eje-box-outer grid" onclick="location.href='marcas_registrar.php';">
            <figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-1">
              <div class="icono-eje">
                <div class="col-md-4 offset-md-4 col-4 offset-4 mb-3 mt-4">
                  <img src="$ThemeDir/img/icon_industriacreativa.png" class="img-fluid">  
                </div>
                <div class="texto-eje h2">Industrias Creativas y Promoción del Folklore</div>
              </div>
              <figcaption>
                <p>
                  
                </p>
                <a href="folklore.php">Vea más</a>
              </figcaption>
            </figure>
          </div>


          <div class="col-md-4 col-12 float-left eje-box-outer grid" onclick="location.href='https://servicios.dinapi.gov.py/';">
            <figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-2">
              <div class="icono-eje">
                <div class="col-md-4 offset-md-4 col-4 offset-4 mb-3 mt-4">
                  <img src="$ThemeDir/img/icon_personas.png" class="img-fluid">  
                </div>
                <div class="texto-eje h2">Sociedades de Gestión Colectiva</div>
              </div>
              <figcaption>
                <p>
                </p>
                <a href="sociedades.php">Vea más</a>
              </figcaption>
            </figure>
          </div>


        </div> --%>

		
		<% if Tarjetas %>		
			<div class="row">
			<% loop Tarjetas %>
				<% if $MultipleOf(3,0) %>
					</div>
					<div class="row">
				<% end_if %>

				<% if $LinkExterno != "" %>
					<div class="col-md-4 col-12 float-left eje-box-outer grid" onclick="location.href='$LinkExterno';">
				<% else %>
					<div class="col-md-4 col-12 float-left eje-box-outer grid" onclick="location.href='{$get_permalink($LinkInterno)}';">
				<% end_if %>
				
				<% if $modulo(1, $Pos(1), 3) %>
            		<figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-2">
				<% else_if $modulo(2, $Pos(1), 3)  %>
            		<figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-1">
				<% else %> 
            		<figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-3">
				<% end_if %>
					<div class="icono-eje">
						<div class="col-md-4 offset-md-4 col-4 offset-4 mb-3 mt-4">
						<img src="$Imagen.URL" class="img-fluid">  
						</div>
						<div class="texto-eje h2">$Titulo</div>
					</div>
					<figcaption>
						<p>$Subtitulo
						</p>
						<% if $LinkExterno != ""  %>
							<a href="$LinkExterno" target="_blank">Vea más</a>
						<% else %>
							<a href="{$get_permalink($LinkInterno)}">Vea más</a>
						<% end_if %>
					</figcaption>
					</figure>
				</div>
			<% end_loop %>
			</div>
		<% end_if %>

        <div class="col-md-1 float-left">
          <!--Navegacion-->
        </div>
      </div>

      <!-- Novedades -->
<%--       <div
        class="col-md-12 clear-section float-left clear-section pb-5"
        id="noticias"
        v-bind:style=" heightsDivs[3] "
      >
 --%>

        <div class="clearfix"></div>
        <div class="row">

        </div>
      </div>
      <!-- Fin Novedades -->