
      <div class="col-md-12 clear-section float-left pt-5 " id="information-container">
        
      <div class="clearfix"></div>

        <div class="row">
            
          <div class="col-md-3 sidebar-links filter-margin">
            <div class="list-group" id="myList">        
              <ul class="list-group biblioteca-mobile" >
                <li class="list-group-item head-biblioteca collapsed" data-toggle="collapse" data-target="#colapse-filter" aria-expanded="true">            
                  <span style="float:left;" class="if-collapsed"><i class="fa fa-filter"></i> MOSTRAR FILTROS</span> 
                  <span style="float:left;" class="if-not-collapsed"><i class="fa fa-filter"></i> FILTROS</span> 
                  <a class="refresh-filter" id="refresh" href="biblioteca" title="Limpiar filtros"><i class="fa fa-refresh"  id="refresh"></i></a>
                </li>
              </ul>
              <ul class="list-group biblioteca-mobile collapse" id="colapse-filter"> 
                <li class="list-group-item search-biblioteca">
                  <form id="SearchForm_SearchForm" action="" method="get"
                    enctype="application/x-www-form-urlencoded" 
                    class="col-md-12 col-xs-12">    
                    <div class="input-group" >                
                        <input type="text" name="busqueda" value="$busqueda" id="busqueda" 
                        class="text form-control search-input" 
                        placeholder="Título, Categoría, Etiqueta">  
                        <button class="action btn btn-primary search-button" type="submit">Buscar</button>      
                    </div>
                  </form>
                </li>
                <% loop ListaCategorias %>
                  <a class="list-group-item d-flex justify-content-between align-items-center item-categoria" id="categoria-$ID"  href="biblioteca/$ID">$Categoria
                  <span class="badge badge-primary badge-pill">$Cantidad</span></a>
                <% end_loop %>
              </ul>
              <ul class="list-group biblioteca-desktop">
                <li class="list-group-item head-biblioteca biblioteca-desktop">            
                 <span style="float:left;"><i class="fa fa-filter"></i> FILTROS</span> 
                 <a class="refresh-filter" id="refresh" href="biblioteca" title="Limpiar filtros"><i class="fa fa-refresh"  id="refresh"></i></a>
                </li>
                <li class="list-group-item search-biblioteca">
                  <form id="SearchForm_SearchForm" action="" method="get"
                    enctype="application/x-www-form-urlencoded" 
                    class="col-md-12 col-xs-12">    
                    <div class="input-group" >                
                        <input type="text" name="busqueda" value="$busqueda" id="busqueda" 
                        class="text form-control search-input" 
                        placeholder="Título, Categoría, Etiqueta">  
                        <button class="action btn btn-primary search-button" type="submit">Buscar</button>      
                    </div>
                  </form>
                </li>
                <% loop ListaCategorias %>
                  <a class="list-group-item d-flex justify-content-between align-items-center item-categoria" id="categoria-$ID"  href="biblioteca/$ID">$Categoria
                  <span class="badge badge-primary badge-pill">$Cantidad</span></a>
                <% end_loop %>
              </ul>
            </div>
          </div>
          <div class="col-md-9">
            <div class="col-md-12 mt-0 information-texto">
                <div class="container-biblioteca noticias-texto">
                    
                    <% if Biblioteca %>
                        <% loop Biblioteca %>
                          <%-- PRINCIPAL --%>                     
                          <div class="row">
                            <div class="col-md-4">
                                <img src="$ImagenPrincipal.URL" class="img-fluid">
                            </div>
                            <div class="col-md-8 noticias-parrafos">
                              <h2 class="biblioteca-detalle-titulo">
                                  $Titulo
                              </h2>
                              <div>
                                $Descripcion
                              </div>
                              
                               
                              <%-- CATEGORIAS --%>              
                              <div class="row">
                                <div class="col-md-12 noticias-parrafos">
                                  <div> 
                                    <h2 class="biblioteca-detalle-titulo biblioteca-texto">
                                        Categorías
                                    </h2>
                                    <div class="biblioteca-texto">
                                      <div class="categoria">
                                        <span class="detalles">
                                          $getCategoria
                                        </span>
                                      </div>
                                    </div>
                                  </div>  
                                </div>
                              </div>
                              <hr>
                          
                              <%-- ETIQUETAS --%>  
                              <% if getEtiquetasLabel %>             
                                <div class="row">
                                  <div class="col-md-12 noticias-parrafos">
                                    <div> 
                                      <h2 class="biblioteca-detalle-titulo biblioteca-texto">
                                          Etiquetas
                                      </h2>
                                      <div class="biblioteca-texto">
                                        <div class="categoria">                                        
                                          <% loop getEtiquetasLabel %>
                                            <div class="margin-etiqueta">
                                              <span class="detalles">
                                                $Etiqueta
                                              </span>
                                            </div>
                                          <% end_loop %>
                                        </div>
                                      </div>
                                    </div>  
                                  </div>
                                </div>
                                <hr>
                              <% end_if %>
                            </div>
                          </div>

                          <%-- VIDEOS --%>
                          <% if $Videos %>                  
                            <div class="row">
                              <div class="col-md-12 noticias-parrafos">
                                <div> 
                                  <h2 class="biblioteca-detalle-titulo biblioteca-texto">
                                      Videos
                                  </h2>
                                  <div class="biblioteca-texto">
                                    $DescripcionVideos
                                  </div>
                                </div>
                                <div class="row biblioteca-texto">
                                  <% if $Videos.Count < 2 %>
                                      <% loop Videos %>
                                        <div class="single-col-biblioteca video-container">
                                          <video id="$ID" style="width:100%;max-width:100%;" controls>
                                            <source src="$URL" type="video/mp4">
                                            Tu navegador no soporta HTML5 video.
                                          </video>
                                          <div class="title">$Title</div>
                                        </div>
                                      <% end_loop %>                                  
                                  <% else %>
                                      <% loop Videos %>
                                        <div class="col-biblioteca video-container">
                                          <video id="$ID" style="width:100%;max-width:100%;" controls>
                                            <source src="$URL" type="video/mp4">
                                            Tu navegador no soporta HTML5 video.
                                          </video>
                                          <div class="title">$Title</div>
                                        </div>
                                      <% end_loop %>                                  
                                  <% end_if %>
                                </div>  
                              </div>
                            </div>
                            <hr>  
                          <% end_if %>

                          <%-- IMAGENES --%>
                          <% if $Imagenes %>                   
                            <div class="row">
                              <div class="col-md-12 noticias-parrafos">
                                <div> 
                                  <h2 class="biblioteca-detalle-titulo biblioteca-texto">
                                      Im&aacute;genes
                                  </h2>
                                  <div class="biblioteca-texto">
                                    $DescripcionImagenes
                                  </div>
                                </div>
                                <div class="row biblioteca-texto">
                                  
                                  <% if $Imagenes.Count < 2 %>   
                                    <% loop Imagenes %>
                                      <div class="single-col-biblioteca video-container">
                                        <img src="$URL" class="img-fluid img-biblioteca" style="margin-bottom:0px;">
                                        <div class="title">$Title</div>
                                      </div>
                                    <% end_loop %>                              
                                  <% else %>
                                    <% loop Imagenes %>
                                      <div class="col-biblioteca video-container">
                                        <img src="$URL" class="img-fluid" style="margin-bottom:0px;">
                                        <div class="title">$Title</div>
                                      </div>
                                    <% end_loop %>
                                <% end_if %>
                                </div>  
                              </div>
                            </div>
                            <hr>  
                          <% end_if %>

                          <%-- DOCUMENTOS --%>
                          <% if $Documentos %>                   
                            <div class="row">
                              <div class="col-md-12 noticias-parrafos">
                                <div> 
                                  <h2 class="biblioteca-detalle-titulo biblioteca-texto">
                                      Documentos
                                  </h2>
                                  <div class="biblioteca-texto">
                                    $DescripcionDocumentos
                                  </div>
                                </div>
                                <div class="row biblioteca-texto">
                                  <% if $Documentos.Count < 2 %>  
                                    <% loop Documentos %>
                                      <div class="single-col-biblioteca video-container">
                                        <embed src="$URL" type="application/pdf" width="100%" class="single-biblioteca-documento" />
                                        <div class="title">
                                            <a target="_blank" href="$URL">$Title [Ver documento <i class="fa fa-eye"></i>]</a>
                                        </div>
                                      </div>
                                    <% end_loop %>                               
                                  <% else %>
                                    <% loop Documentos %>
                                      <div class="col-biblioteca video-container">
                                        <embed src="$URL" type="application/pdf" width="100%" class="biblioteca-documento" />
                                        <div class="title">
                                            <a target="_blank" href="$URL">$Title [Ver documento <i class="fa fa-eye"></i>]</a>
                                        </div>
                                      </div>
                                    <% end_loop %>
                                  <% end_if %>
                                </div>  
                              </div>
                            </div>
                            <hr>  
                          <% end_if %>

                          <%-- ENLACES Y REFERENCIAS --%>
                          <% if $EnlacesReferencias %>                          
                            <div class="noticias-parrafos">
                              <h2 class="biblioteca-detalle-titulo">
                                  Enlaces y Referencias
                              </h2>
                              $EnlacesReferencias
                            </div>
                            <hr>  
                          <% end_if %>
                            
                        <% end_loop %>
                    <% end_if %>
                </div>
            </div>
          </div>
        </div>
      </div>


      <script type="text/javascript">    
        $(document).ready(function(){
  
          $('#myList a').on('click', function (e) {
            e.preventDefault();
            id = e.target.id.replace('categoria-', '');
            if(id == 'refresh'){
              location.href='biblioteca';
            }else{ 
              const queryString = window.location.search;
              const urlParams = new URLSearchParams(queryString);
              var busqueda = urlParams.get('busqueda');  
              if(urlParams.has('busqueda') && busqueda != ''){           
                location.href='biblioteca/'+id+'?busqueda='+busqueda;
              }else{
                location.href='biblioteca/'+id;
              }
            }
          })
          
          /*var res = window.location.pathname.split("/");
          if(typeof res[3] != "undefined"){
            var element = document.getElementById("categoria-"+res[3]);
            element.classList.add("active");
          }*/
        });
  </script>