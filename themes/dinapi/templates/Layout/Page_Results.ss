
      <div class="float-left information-header" id="head_marcas" style="background-image: $ThemeDir/img/news.jpg !important;" >



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
          <ol class="breadcrumb">
            <li><a href="$BaseHref">INICIO</a></li> 
            <li class="active">BÚSQUEDA DE INFORMACIÓN</li>
          </ol>
        </div>
        
        <div class="row">
		
          <div class="col-md-3 sidebar-links">
            <h1>BÚSQUEDA DE INFORMACIÓN</h1>
          </div>
          <div class="col-md-8 mt-5 information-texto">
            <div class="row">
              <div class="col-md-12">
                <h3>Buscar</h3>
                  <% if $SearchForm %>
                      $SearchForm
                  <% end_if %>
              </div>
              <br>
              <br>
              <div class="col-md-12">
                <div id="Content" class="searchResults">
                  <h3>$Title</h3>
                  <% if $Query %>
                    <h4 class="searchQuery">Buscar: <strong>&quot;{$Query}&quot;</strong>  <small> ($Results.Count resultados)</small></h4>
                  <% end_if %>
                  <% if $Results %>
                    <div class="resultados-busqueda">
                      <h2>Resultado de Busqueda en Artículos Institucionales</h2>
                      <% loop $Results %>
                        <div class="well">
                            <h4 class=""><a href="$Link"><% if $MenuTitle %> $MenuTitle <% else %> $Title <% end_if %></a></h4>
                            <% if $Content %>
                              <p>$Content.LimitWordCountXML</p>
                            <% end_if %>
                            <hr />
                        </div>
                      <% end_loop %>
                    </div>
                  <% else %>
                    <p class="">No encontramos nada que concuerde con tu búsqueda <i class="fa fa-frown-o"></i></p>
                  <% end_if %>
                  
                  <% if $Results.MoreThanOnePage %>
                    <div id="PageNumbers">
                      <nav>
                        <ul class="pagination">
                          <% if $Results.NotFirstPage %>
                            <li> <a href="$Results.PrevLink" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a> </li>
                          <% else %>
                            <li class="disabled"> <a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a> </li>
                          <% end_if %>
                          
                          <% loop $Results.Pages %>
                            <% if $CurrentBool %>
                              <li class="active"><a href="#">$PageNum</a></li>
                            <% else %>
                              <li><a href="$Link" title="Ir a página $PageNum" class="go-to-page">$PageNum</a></li>
                            <% end_if %>
                          <% end_loop %>
                          
                          <% if $Results.NotLastPage %>
                            <li> <a href="$Results.NextLink" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>
                          <% else %>
                            <li class="disabled"> <a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>
                          <% end_if %>
                        </ul>
                      </nav>
                    </div>
                  <% end_if %>

                  <% if $Query %>
                    <% if $ListaNoticiasBuscador($Query) %>
                      <div class="resultados-busqueda">
                        <h2>Resultado de Busqueda en Noticias</h2>
                        <% loop $ListaNoticiasBuscador($Query) %>
                          <div class="well">
                              <h4 class=""><a href="noticias/detalle-noticia?idNoticia=$ID">$Titulo</a></h4>
                              <% if $Content %>
                                <p>$getEpigrafe($Content)...</p>
                              <% end_if %>
                              <hr />
                          </div>
                        <% end_loop %>
                      </div>
                    <% else %>
                      <p class="">No encontramos nada que concuerde con tu búsqueda <i class="fa fa-frown-o"></i></p>
                    <% end_if %>                  
                  <% end_if %>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      


<script type="text/javascript" src="$ThemeDir/js/buscador.min.js"></script>