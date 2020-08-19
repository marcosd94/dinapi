<div class="float-left secondary-header head2 head_marcas" <% if Imagen %> style="background-image: url($Imagen.URL);" <% end_if %>>
  <div class="float-left" id="main-image">
  </div>
</div>
<div class="col-md-12 clear-section float-left pt-5 "id="information-container">
  <div class="clearfix"></div>
  <div class="col-md-12 bread">
    <div>    
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
      <%-- <h2 class="inicial" style="text-transform: uppercase">$Titulo</h2> --%>
      $ContenidoSuperior
      <% if Desplegables %>
        <% loop Desplegables %>          
          <h4 class="inicial" data-toggle="collapse" data-target="#colapse-$ID" style="cursor: pointer;text-transform: uppercase;">+ $Titulo</h4>
          <div id="colapse-$ID" class="collapse">
            $Content
            
            <% if Adjunto %> 
                <div class="row">
                    <button type="button" class="btn btn-info" onclick="location.href='$Adjunto.URL';">
                      $TituloAdjunto
                    </button>
                </div>      
            <% end_if %>     
          </div>
          <div style="height: 20px;"></div>
          <hr/>        
        <% end_loop %>
      <% end_if %>
      <% if Anexo %> 
          <div class="row">
              <div class="articulos-secondary col-md-12 col-sm-12">
                <div class="articulos-secondary-content">
                  <div class="articulos-title">
                    ANEXOS
                  </div>
                  <div class="articulos-descripcion">
                    <button type="button" class="btn btn-info" onclick="location.href='$Anexo.URL';">
                      $TituloAnexo
                    </button>
                  </div>
                </div>
              </div>
            </div>  
      <% end_if %>  
      
      <br>
      $Content
    </div>
  </div>
</div>