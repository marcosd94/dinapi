
      <div class="float-left information-header" id="head_marcas" <% if Imagen %> style="background-image: url($Imagen.URL);" <% end_if %>>



        <div class="float-left" id="main-image">
          <!--img src="../../img/logo.png" class="col-md-6 col-sm-12" id="img1" /-->
        </div>
      </div>
      <div
        class="col-md-12 clear-section float-left pt-5 "
        id="information-container"
      >
        <div class="clearfix"></div>
        <div class="col-md-12 bread">
          <%-- <div><a href="#">Inicio</a> / <a href="index.php">Marcas</a> / Aprender</div> --%>
			$Breadcrumbs
        </div>
        <div class="row">
		
			<% if $TituloPadre %>
				<div class="col-md-3 sidebar-links">
					<h1>$TituloPadre</h1>
					
					<% if AllChildren %>
						<div class="lista">
							<ul>
							<% loop AllChildren %>
								<li class="li-principal"><a href="$Link" class="menu_lateral">$Title</a></li>
							<% end_loop %>
							</ul>
						</div>
					<% end_if %>
           		</div>
          <div class="col-md-8 mt-5 information-texto">
		    <% else %>
          <div class="col-md-10 offset-md-1 mt-5 information-texto">
		    <% end_if %>
            
              $Content


          </div>
        </div>
      </div>
      
