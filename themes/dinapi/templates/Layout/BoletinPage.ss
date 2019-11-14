   
<div class="float-left secondary-header head2 head_marcas" <% if Imagen %> style="background-image: url($Imagen.URL);" <% end_if %>>

  <div class="float-left" id="main-image">
    <!--img src="img/logo.png" class="col-md-6 col-sm-12" id="img1" /-->
  </div>
</div>
<div class="col-md-12 clear-section float-left pt-5 "id="information-container">
  <div class="clearfix"></div>
  <div class="col-md-12 bread">
    <div>
      <%-- <a href="../../index.php">Inicio</a> / <a href="index.php">Marcas</a> / Boletines de Marcas --%>      
			$Breadcrumbs
    </div>
  </div>
  <div class="row">
    <div class="col-md-3 sidebar-links">
      <h1>$TituloPadre</h1>
      <div class="lista">
        <ul>
          
        </ul>
      </div>
    </div>
    <div class="col-md-8 mt-5 information-texto">


      <h2 class="inicial" style="text-transform: uppercase">$Title</h2>
      



      <% loop AllChildren.Reverse %>
        <h4>$Title</h4>
        <% if Boletines %>
          <div class="row">
            <div class="col-md-12 mt-3">
              <% loop Boletines %>
                <h4 class="noticias-titulo">
                  <a target="_blank" href="$Pdf.URL" class="boletines-new">
                    $Titulo
                  </a>
                </h4>          
                <% if Imagen %>
                  <h4 class="noticias-titulo">
                    <a target="_blank" href="$Imagen.URL"  class="boletines-new">
                      Imagen $Titulo
                    </a>
                  </h4>
                <p></p>
                <% end_if %>
              <% end_loop %>
            </div>
          </div>
        <% end_if %>
        <hr />
      <% end_loop %>

    </div>
  </div>
</div>
      