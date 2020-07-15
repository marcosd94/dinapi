    <% if Biblioteca %>
      <% loop Biblioteca %>
          <meta charset="utf-8" />
          <meta http-equiv="X-UA-Compatible" content="IE=edge" />
          <meta name="viewport" content="maximum-scale=2.0" />

          <!--Tags-->

          <!--Google-->
          <meta
            name="description"
            content="La DINAPI es el ente público que diseña, implementa y fomenta y coordina las políticas de propiedad intelectual en el Paraguay"
          />
          <meta
            name="keywords"
            content="propiedad intelectual, derecho de autor, observancia, patentes"
          />

          <!--Facebook-->
          <meta property="og:title" content="$Titulo" />
          <meta
            property="og:description"
            content="$Titulo"
          />
          <meta property="og:image" content="$ImagenPrincipal.URL" />
          <meta property="og:type" content="website" />

          <!--Twitter-->
          <meta name="twitter:card" content="summary_large_image" />
          <meta name="twitter:url" content="url-here" />
          <meta property="twitter:image" content="$ImagenPrincipal.URL" />
          <meta
            name="twitter:title"
            content="$Titulo"
          />
          <meta
            name="twitter:description"
            content="$Titulo"
          />
      <% end_loop %>
  <% end_if %>
    
    <style type="text/css">
      div {
        font-size: 0.9rem;
      }
      img {
        margin-bottom: 20px;
      }
    </style>     
     
      <div class="float-left information-header head2 head_noticias">

        <div class="float-left" id="main-image">
          <!--img src="img/logo.png" class="col-md-6 col-sm-12" id="img1" /-->
        </div>
      </div>
      <div class="col-md-12 clear-section float-left pt-5 " id="information-container">
        <%-- <div class="col-md-12 bread">
          <div>Biblioteca virtual</div>
        </div> --%>

        <div class="row">
            <div class="col-md-5 sidebar-links mt-0">
                <h1 style="padding: 20px 0px !important;">Biblioteca virtual</h1>
            </div>
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
                                $Descripcion
                            </div>
                          </div>
                          <hr>
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
                                  <% loop Videos %>
                                    <div class="col-biblioteca video-container">
                                      <video id="$ID" style="width:100%;max-width:100%;" controls>
                                        <source src="$URL" type="video/mp4">
                                        Tu navegador no soporta HTML5 video.
                                      </video>
                                      <div class="title">$Title</div>
                                    </div>
                                  <% end_loop %>
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
                                  <% loop Imagenes %>
                                    <div class="col-biblioteca video-container">
                                      <img src="$URL" class="img-fluid" style="margin-bottom:0px;">
                                      <div class="title">$Title</div>
                                    </div>
                                  <% end_loop %>
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
                                  <% loop Documentos %>
                                    <div class="col-biblioteca video-container">
                                      <embed src="$URL" type="application/pdf" width="100%" class="biblioteca-documento" />
                                      <div class="title">
                                          <a target="_blank" href="$URL">$Title [Ver documento <i class="fa fa-eye"></i>]</a>
                                      </div>
                                    </div>
                                  <% end_loop %>
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
                            <%-- <div class="row">
                              <div class="col-md-12 noticias-parrafos">
                                <div> 
                                  <h2 class="biblioteca-detalle-titulo biblioteca-texto">
                                      Enlaces y Referencias
                                  </h2>
                                </div>
                                <div class="row biblioteca-texto">                                  
                                  <div class="biblioteca-texto referencias">
                                    $EnlacesReferencias
                                  </div>
                                </div>  
                              </div>
                            </div> --%>
                            <hr>  
                          <% end_if %>
                            
                        <% end_loop %>
                    <% end_if %>
                </div>
            </div>
        </div>
      </div>