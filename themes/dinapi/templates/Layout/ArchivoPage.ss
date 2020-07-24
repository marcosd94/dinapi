   
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
      <h1>$Titulo</h1>
      <div class="lista">
        <ul>
          
        </ul>
      </div>
    </div>
    <div class="col-md-8 mt-5 information-texto">


      <h2 class="inicial" style="text-transform: uppercase">$Title</h2>      

      <div class="row">

        <% if Archivos %>
          <div class="col-md-12 mt-3">
            <% loop Archivos %>
              <h4 class="noticias-titulo">
              <% if $Pdf %>
                <a target="_blank" href="$Pdf.URL">
              <% else %>
                <a target="_blank" href="$LinkExterno">
              <% end_if %>
                  <%-- $ID -  --%>$Titulo
                </a>
              </h4><hr/>     
            <% end_loop %>     
          </div>
        <% end_if %>
      </div>

    </div>
  </div>
</div>
      