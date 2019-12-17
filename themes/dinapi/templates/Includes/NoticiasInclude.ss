<div class="col-md-10 offset-md-1 mt-5 mb-3" style="margin-top: 20px;"><!--NOTICIAS-->
    <div class="col-12 titulo-enlace">
    <h1>
        ÚLTIMAS NOTICIAS
    </h1>
    </div>
    <div class="card-deck">     
      <% if ListaNoticiasDestacadas %>
        <% loop ListaNoticiasDestacadas.Limit(3).sort(ID, DESC) %>          
        <div class="card">
            <a href="noticias/detalle-noticia?idNoticia=$ID" style="color: black;">
            <img class="card-img-top" src="$Imagen.URL" alt="Card image cap">
            </a>
            <div class="card-body">
            <h5 class="card-title">
                <a href="noticias/detalle-noticia?idNoticia=$ID" style="color: black;">
                  $Titulo
                </a>
            </h5>
            <p class="card-text">
                $getEpigrafe($Content)...
            </p>
            </div>
        </div>   
        <% end_loop %>
      <% end_if %>
    </div>

    <div class="col-12 titulo-enlace">
    <a class="btn btn-info" href="centro-de-noticias">
        Ver más noticias
    </a>
    </div>
</div>
