<!-- BANNERS -->
<div class="col-md-12 float-left clear-section light-section " id="banners" v-bind:style=" heightsDivs[4] ">
    <div class="owl-carousel-banners mt-4">        
        <% loop $ListaAnuncios %>
            <% if $LinkInterno == 0 %> 
                <div onclick="window.open('$LinkExterno')">
                    <img src="$Imagen.URL" alt="$Titulo" />
                </div>
            <% else %>
                <div onclick="window.open('{$get_permalink($LinkInterno)}')">
                    <img src="$Imagen.URL" alt="$Titulo" />
                </div>
            <% end_if %>				
        <% end_loop %>  
    </div>
</div>