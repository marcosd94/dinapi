<div class="row">
  <div class="col-md-12">
    <div class="section">
      $Breadcrumbs
      <% if Children %>
      <div class="col-md-9" style="border-right: 1px solid #ddd">
        <div class="contenido">
          $Content
        </div>
      </div>
      <div class="col-md-3">
        <ul class="list-unstyled">
          <% loop Children %>
          <li><a href="$Link"><i class="fa fa-angle-right"></i> $Title</a></li>
          <% end_loop %>
        </ul>
      </div>
      <% else %>
      <div class="contenido">
        $Content
      </div>
      <% end_if %>
    </div>
    <% if Archivos.Count %>
    <div class="well col-md-12" style="margin-top: 10px">
      <h4>Archivos adjuntos</h4>
      <ul class="list-inline">
        <% loop Archivos %>
        <li><a href="$URL"><i class="fa fa-download"></i> $Title</a> <sup style="text-transform: uppercase">[$Extension]</sup></li>
        <% end_loop %>
      </ul>
    </div>
    <% end_if %>
  </div>
</div>
<!--<script>
function simular_credito(){
	var porcentaje = $(#meses).val();
	var monto = $(monto_prestamod).val();
	valor = numeroConPuntos(valor);
	$(#cuotas).val(monto + (monto*porcentaje)/100);
	$(#cuotas).addClass('active');
	
	
}</script>
-->