<div class="row">
  <!-- Barra de títulos y acciones -->
  <div class="row" style="padding:2% 5%;text-align: center;width: 100%;">
    <div class="col-md-12" style="margin: 0 auto;">
      <button class="btn btn-primary btn-lg nav-fecha anterior"><i class="fa fa-arrow-left"></i></button>
      <button class="btn btn-calendar btn-lg" id="actual" data-mes="$MesActualNro"></button>
      <button class="btn btn-primary btn-lg nav-fecha siguiente"><i class="fa fa-arrow-right"></i></button>
    </div>
    <br>
    <br>
    <div id="loader" style="display:none;width: 100%;margin-top: 5%;">
      <i class="fa fa-spin fa-3x fa-gear"></i>
    </div>
    <!-- Calendario -->
    <div class="row" style="margin-top:5%;width: 100%;text-align: center;"id="calendario">
      <% include ActividadesMes %>
    </div>
  </div>
</div>
<script type="text/javascript" src="$ThemeDir/js/calendario.min.js"></script>