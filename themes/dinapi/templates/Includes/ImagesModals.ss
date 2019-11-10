<% loop Fotos.Sort('Created', DESC) %>
<div class="portfolio-modal modal fade" id="noticias-$Foto.ID" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-content" style="background-color: rgba(255,255,255,0.8);">
    <!--<div class="close-modal" data-dismiss="modal">
      <div class="lr">
        <div class="rl">
        </div>
      </div>
    </div>-->
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
          <div class="modal-body">
            <h4>$Nombre</h4>
            <br/>
            <!--hr class="star-primary"-->
            <img src="$Foto.URL" class="img-responsive img-centered" style="opacity: 1;">
            <p>
              $Descripcion
            </p>
            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Cerrar</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<% end_loop %>
