<% include HeaderImage %>

<div class="general-margen">
  <div class ="col-lg-12 col-md-12 contenedor-articulos" style="min-height:400px;margin-top: 20px;">
    $Content
    <% if $ListaPreguntasFrecuentes %>
    <div class="panel-group" id="accordion3">
      <% loop $ListaPreguntasFrecuentes %>
      <div class="panel panel-default">
        <div class="panel-heading">
          <a class="panel-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse-$ID">
            <h5>$Pregunta</h5>
          </a>
        </div>
        <div id="collapse-$ID" class="panel-body collapse">
          <div class="panel-inner">
            $Respuesta
          </div>
        </div>
      </div>
      <% end_loop %>
    </div>
    <% end_if %>
  </div>
</div>

<script type="text/javascript">
	var contexto = '$AbsoluteLink';
</script>
<script type="text/javascript" src="$ThemeDir/js/formularios.min.js"></script>