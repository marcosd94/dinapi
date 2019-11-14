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
      <h2 class="inicial" style="text-transform: uppercase">$Titulo</h2>
      <% if AllChildren %>
        <% loop AllChildren %>
          <% if AllChildren %>
            <h4 class="inicial" data-toggle="collapse" data-target="#colapse-$ID" style="cursor: pointer;text-transform: uppercase;">+ $Title</h4>
            <div id="colapse-$ID" class="collapse">
              <% loop AllChildren %>   
                <% if Archivos %>          
                    <p><b>$Title</b></p>
                    <ul>
                      <% loop Archivos %>
                        <li>
                          <% if $Pdf %>
                            <a href="$Pdf.URL" class="texto-normal" target="_blank">
                          <% else %>
                            <a href="$LinkExterno" class="texto-normal" target="_blank">
                          <% end_if %>
                            $Titulo
                          </a>
                        </li>   
                      <% end_loop %>  
                    </ul>           
                <% end_if %> 
              <% end_loop %>
            </div>
            <div style="height: 20px;"></div>
            <hr/>  
          <% else %>    
            <% if Archivos %>      
              <h4 class="inicial" data-toggle="collapse" data-target="#colapse-$ID" style="cursor: pointer;text-transform: uppercase;">+ $Title</h4>
              <div id="colapse-$ID" class="collapse">
                <ul>
                  <% loop Archivos %>
                    <li>
                      <% if $Pdf %>
                        <a href="$Pdf.URL" class="texto-normal" target="_blank">
                      <% else %>
                        <a href="$LinkExterno" class="texto-normal" target="_blank">
                      <% end_if %>
                      $Titulo
                      </a>
                    </li>   
                  <% end_loop %>  
                </ul>        
              </div>
              <div style="height: 20px;"></div>
              <hr/>        
            <% end_if %>   
          <% end_if %>    
        <% end_loop %>  
      <% end_if %>
    </div>
  </div>
</div>