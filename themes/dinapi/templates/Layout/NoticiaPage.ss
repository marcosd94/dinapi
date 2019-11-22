<div class="col-md-12 clear-section float-left pt-5 "id="information-container">
  <div class="clearfix"></div>
  <div class="col-md-12 bread">
    <div>    
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





<div id="carouselExampleIndicators" class="carousel carousel2 slide" data-ride="carousel">
  <%-- <ol class="carousel-indicators d-none">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol> --%>
  <div class="carousel-inner">
      <% if ListaNoticiasDestacadas %>
        <% loop ListaNoticiasDestacadas.Limit(3).sort(ID, DESC) %>
          <div class="carousel-item <% if $Pos(0) == 0 %> active <% end_if %>">
            <img src="$Imagen.URL" class="img-fluid img-slider-noticias" alt="...">
            <!--div class="carousel-caption d-none d-md-block"-->
            <a href="noticias/detalle-noticia?idNoticia=$ID">
              <div class="carousel-caption d-none d-md-block">
                <h5>$Titulo</h5>
              </div>
              <div style="margin-top: -200px;" class="carousel-caption d-block d-md-none">
                <h5>$Titulo</h5>
              </div>
            </a>
          </div>
        <% end_loop %>
      <% end_if %>  
  </div>
  <a class="carousel-control-prev" id="prueba-prev"  href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" id="prueba-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>




      <% if ListaNoticias %>
        <% loop ListaNoticias.sort(ID, DESC) %>
          <div class="row">
            <div class="col-md-4">
              <a href="noticias/detalle-noticia?idNoticia=$ID">
                <img src="$Imagen.URL" class="img-fluid">
              </a>
            </div>
            <div class="col-md-8">
              <h4 class="noticias-titulo-page">
              <a href="noticias/detalle-noticia?idNoticia=$ID">
                  $Titulo
                </a>
              </h4>
              <p class="noticias-epigrafe">
                $getEpigrafe($Content)...
              </p>
            </div>
          </div>
          <hr />      
        <% end_loop %>
      <% end_if %>

    </div>
  </div>
</div>

<script src="$ThemeDir/js/carousel.js"></script>