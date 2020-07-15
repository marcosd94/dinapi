
<div class="float-left secondary-header head head_contacto"  <% if Imagen %> style="background-image: url($Imagen.URL);" <% end_if %>>
  
  <div class="float-left" id="main-image">
    <!--img src="img/logo.png" class="col-md-6 col-sm-12" id="img1" /-->
  </div>
</div>
<div
  class="col-md-12 clear-section float-left pt-5 "
  id="information-container"
>
  <div class="clearfix"></div>
  <div class="col-md-12 bread">
    $Breadcrumbs
  </div>
<div class="row">

    <div class="col-md-12 mt-5 information-texto">

      <h2 class="inicial col-md-10 offset-md-1">
        Acceso a la Información Pública
      </h2>

      <div class="mt-5"></div>
        <% if TarjetasSimples %>		
          <div class="row">
          <% loop TarjetasSimples %>
            <% if $MultipleOf(3,0) %>
              </div>
              <div class="row">
            <% end_if %>			
            
            <div class="col-md-4 col-12 float-left eje-box-outer grid">
            
              <% if $modulo(1, $Pos(1), 6) %>
                <figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-industrial">
              <% else_if $modulo(2, $Pos(1), 6)  %>
                <figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-derechoautor">
              <% else_if $modulo(3, $Pos(1), 6)  %>
                <figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-observancia">
              <% else_if $modulo(4, $Pos(1), 6)  %>
                <figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-industrial2">
              <% else_if $modulo(5, $Pos(1), 6)  %>
                <figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-derechoautor2">
              <% else %> 
                <figure class="eje-box-inner effect-apollo tarjeta_fondo" id="boxsup-observancia2">
              <% end_if %>
                <div class="icono-eje mt-5 pl-2 pr-2">
                  <div class="texto-eje h2">
                    $Titulo
                  </div>
                </div>
                <figcaption>
                  <p></p>
                  <% if $LinkExterno != "" %>
                  <a target="_blank" href="$LinkExterno">Vea más</a>
                    <% else %>
                  <a  href="{$get_permalink($LinkInterno)}">Vea más</a>
                    <% end_if %>
                </figcaption>
              </figure>
            </div>
          <% end_loop %>
          </div>
        <% end_if %>
        </hr>
    
    
    </div>
</div>
