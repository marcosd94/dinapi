
<div class="float-left" id="head" v-bind:style="heightsDivs[0]" style="width: 100%; padding-left: 0; padding-right: 0;">
   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner" role="listbox">
         <% loop $ListaCarousel %>					         
            <div class="carousel-item <% if $Pos(0) == 0 %> active <% end_if %>" style="background-image: url('$Imagen.URL')">
               <div class="carousel-caption d-none d-md-block">
                  <h2 class="display-4 font-fira">$Titulo</h2>
                  <p class="lead">$Descripcion</p>
                  <p class="text-right font-fira" style="font-size: 14px; margin-bottom: 0px;">
                     <a href="{$get_permalink($Link)}">$TituloLink</a>
                  </p>
               </div>
               <div class="carousel-caption d-block d-md-none">
                  <h2 class="display-4 font-fira portada_titulo_reduc">
                     $Titulo
                  </h2>
               </div>
            </div>
         <% end_loop %>
      </div>
   </div>
   </div>
   <div class="col-md-12 clear-section float-left light-section " id="eje" v-bind:style=" heightsDivs[1] ">
      <div style="height: 10px;"></div>
      <div class="clearfix"></div>
      <div class="row j-mt-5">
         <div class="col-md-4 col-12 float-left eje-box-outer">
            <div class="eje-box-inner tarjeta_fondo" id="boxsup-industrial">
               <div class="row mt-3 mb-3 ml-1 mr-1">
                  <div class="col-md-3 col-3">
                     <img src="$ThemeDir/img/icon_pi.png" class="img-fluid">
                  </div>
                  <div class="col-md-9 col-9 row" style="padding-right: 0px;">
                     <% loop $ListaTemasDeEjes(1) %>					
                        <div class="subitem-eje-portada h5 punterolink" onclick="location.href='{$get_permalink($Link)}';">$Nombre</div>
                     <% end_loop %>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-md-4 col-12 float-left eje-box-outer">
            <div class="eje-box-inner tarjeta_fondo" id="boxsup-derechoautor">
               <div class="row mt-3 mb-3 ml-1 mr-1">
                  <div class="col-md-3 col-3">
                     <img src="$ThemeDir/img/icon_autor.png" class="img-fluid">
                  </div>
                  <div class="col-md-9 col-9 row" style="padding-right: 0px;">
                     <% loop $ListaTemasDeEjes(2) %>					
                        <div class="subitem-eje-portada h5 punterolink" onclick="location.href='{$get_permalink($Link)}';">$Nombre</div>
                     <% end_loop %>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-md-4 col-12 float-left eje-box-outer">
            <div class="eje-box-inner tarjeta_fondo" id="boxsup-observancia">
               <div class="row mt-3 mb-3 ml-1 mr-1">
                  <div class="col-md-3 col-3">
                     <img src="$ThemeDir/img/icon_observancia.png" class="img-fluid">
                  </div>
                  <div class="col-md-9 col-9 row" style="padding-right: 0px;">
                     <% loop $ListaTemasDeEjes(3) %>					
                        <div class="subitem-eje-portada h5 punterolink" onclick="location.href='{$get_permalink($Link)}';">$Nombre</div>
                     <% end_loop %>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="col-md-1 float-left">
         <!--Navegacion-->
      </div>
   </div>
   <% include Banners %>
   <!-- Enlaces de Interes -->
   <div class="col-md-12 float-left clear-section light-section " id="enlaces" v-bind:style=" heightsDivs[4] ">
      <div class="col-12 titulo-enlace">
         <h1>
            ENLACES DE INTERÉS
         </h1>
      </div>
      <div class="owl-carousel mt-4">
         <% loop $ListaEnlacesInteres %>					
            <div onclick="window.open('$Link')">
               <img src="$Imagen.URL" alt="$Titulo" />
            </div>
         <% end_loop %>
      </div>
   </div>
</div>