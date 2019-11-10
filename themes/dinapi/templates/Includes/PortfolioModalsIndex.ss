<% loop $ListaNoticias %>
<div class="portfolio-modal modal fade" id="noticias-$Imagen.ID" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-content" style="background-color: rgba(255,255,255,0.8); padding-top: 150px;">  
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
          <div class="modal-body">
            <h3>$Noticia</h3>
            <img src="$Imagen.URL" class="img-responsive img-centered" style="opacity: 1;">
            <p style="text-align:justify;">
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