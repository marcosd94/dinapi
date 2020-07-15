   
<div class="float-left secondary-header head2 head_marcas" <% if Imagen %> style="background-image: url($Imagen.URL);" <% end_if %>>

  <div class="float-left" id="main-image">
    <!--img src="img/logo.png" class="col-md-6 col-sm-12" id="img1" /-->
  </div>
</div>
<div class="col-md-12 clear-section float-left pt-5 "id="information-container">
  <div class="clearfix"></div>
  <div class="col-md-12 bread">
    <div>
      <%-- <a href="../../index.php">Inicio</a> / <a href="index.php">Marcas</a> / Boletines de Marcas --%>      
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

      <% if AllChildren %>
        <% loop AllChildren.Reverse %>
              <div style="margin-bottom:5%;">
          <h2 class="inicial">$Title</h2>
          <% loop AllChildren.Reverse %>
            <h4>$Title</h4>
            <% if ActosJuridicos %>
              <div class="row">
                <div class="col-md-4">
                  <p><b>Actos Jur&iacute;dicos</b></p>
                  <% loop ActosJuridicos %>
                    <p>
                      <a target="_blank" href="$Pdf.URL" style="color: gray ; font-weight: normal;">
                        $Titulo
                      </a>
                    </p>
                  <% end_loop %>
                </div>
              </div>
            <% end_if %>


            <div class="row">              
            <div class="col-md-4">
              <p><b>Marcas y documentos recibidos</b></p>
              
                <% loop MarcasDocumentosRecibidos %>
                  <p>
                    <a target="_blank" href="$Pdf.URL" style="color: gray ; font-weight: normal;">
                      $Titulo
                    </a>
                  </p>
                <% end_loop %>
            </div>

            <div class="col-md-4">
              <p><b>Logotipos de marcas recibidas</b></p>
              
                  <% loop LogotiposMarcasRecibidos %>
                    <p>
                      <a target="_blank" href="$Pdf.URL" style="color: gray ; font-weight: normal;">
                        $Titulo
                      </a>
                    </p>
                  <% end_loop %>
            </div>

            <div class="col-md-4">
              <p><b>Movimientos administrativos</b></p>
              
                  <% loop MovimientosAdministrativos %>
                    <p>
                      <a target="_blank" href="$Pdf.URL" style="color: gray ; font-weight: normal;">
                        $Titulo
                      </a>
                    </p>
                  <% end_loop %>
            </div>
          </div>
          <% end_loop %>

              </div>
        <% end_loop %>
      <% else %> 
      
        <h2 class="inicial">BOLETINES DE MARCAS</h2>
        <% loop AllChildren.Reverse %>
          <h4>$Title</h4>
          <% if ActosJuridicos %>
            <div class="row">
              <div class="col-md-4">
                <p><b>Actos Jur&iacute;dicos</b></p>
                <% loop ActosJuridicos %>
                  <p>
                    <a target="_blank" href="$Pdf.URL" style="color: gray ; font-weight: normal;">
                      $Titulo
                    </a>
                  </p>
                <% end_loop %>
              </div>
            </div>
          <% end_if %>


          <div class="row">              
          <div class="col-md-4">
            <p><b>Marcas y documentos recibidos</b></p>
            
              <% loop MarcasDocumentosRecibidos %>
                <p>
                  <a target="_blank" href="$Pdf.URL" style="color: gray ; font-weight: normal;">
                    $Titulo
                  </a>
                </p>
              <% end_loop %>
          </div>

          <div class="col-md-4">
            <p><b>Logotipos de marcas recibidas</b></p>
            
                <% loop LogotiposMarcasRecibidos %>
                  <p>
                    <a target="_blank" href="$Pdf.URL" style="color: gray ; font-weight: normal;">
                      $Titulo
                    </a>
                  </p>
                <% end_loop %>
          </div>

          <div class="col-md-4">
            <p><b>Movimientos administrativos</b></p>
            
                <% loop MovimientosAdministrativos %>
                  <p>
                    <a target="_blank" href="$Pdf.URL" style="color: gray ; font-weight: normal;">
                      $Titulo
                    </a>
                  </p>
                <% end_loop %>
          </div>
        </div>
        <% end_loop %>
       
      <% end_if %>   

    </div>
  </div>
</div>
      