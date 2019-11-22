<div class="float-left secondary-header head2 head_institucional" <% if Imagen %> style="background-image: url($Imagen.URL);" <% end_if %>>
    <div class="float-left" id="main-image">
        <!--img src="img/logo.png" class="col-md-6 col-sm-12" id="img1" /-->
      </div>
    </div>
    <div class="col-md-12 clear-section float-left pt-5 " id="information-container">
      <div class="clearfix"></div>
      <div class="col-md-12 bread">
          <div>Concursos</div>
      </div>
      <div class="row">
        <div class="col-md-3 sidebar-links">
          <h1>DATOS INSTITUCIONALES</h1>
          <div class="lista">
            <ul>
              
            </ul>
          </div>
        </div>
        <div class="col-md-8 mt-5 information-texto">
          <h2 class="inicial">CONCURSOS</h2>
          <hr />
          <br>
          <div class="col-md-10">
          <% loop Concurso %> 
              <img class="img-fluid" src="$ImagenCompleta.URL">
          <% end_loop %>
          </div>
        </div>
      </div>
    </div>
</div>
      
