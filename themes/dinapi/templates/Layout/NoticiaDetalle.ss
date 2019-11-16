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
        <div class="col-md-12 bread">
          <div>Centro de Noticias</div>
        </div>

        <div class="row">
            <div class="col-md-3 sidebar-links mt-0">
                <h1>Centro de Noticias</h1>
                <div class="lista">
                </div>
            </div>
            <div class="col-md-8 mt-0 information-texto">
                <div class="container noticias-texto">
                    
                    <% if Noticia %>
                        <% loop Noticia %>
                        <div class="col-md-12">
                        <h2 class="noticias-titulo">
                            $Titulo
                        </h2>
                        </div>
                        <div class="col-md-12 noticias-parrafos">
                        
                        <img src="$Imagen.URL" class="img-fluid">
                        <div>
                            $Content           
                        </div>   
                        </div>
                            
                        <% end_loop %>
                    <% end_if %>
                </div>
                <hr>
            </div>
        </div>
      </div>