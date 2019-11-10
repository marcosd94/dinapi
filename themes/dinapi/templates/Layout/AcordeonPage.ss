<% include HeaderImage %>
<div class="general-margen">
  <div class ="col-lg-12 col-md-12 contenedor-articulos" style="min-height:400px;margin-top: 20px;">
    $Content
    <% if AllChildren %>
      <div class="panel-group" id="accordion3">      
        <div class="col-md-6">
          <% loop AllChildren %>
            <% if $getIndices($TotalItems, $Pos(0)) != $getIndices($TotalItems, $Pos(1)) %>
              </div><div class="col-md-6">
            <% end_if %>          
            <div class="panel panel-default"  style="padding:0px;">
              <div class="panel-heading">
                <a class="panel-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapse-$ID">
                  <h5>$Title</h5>
                </a>
              </div>
              <div id="collapse-$ID" class="panel-body collapse">
                <div class="panel-inner">
                  $Content
                </div>
              </div>
            </div>
          <% end_loop %>
        </div>
      </div>
    <% end_if %>
  </div>
</div>
<script type="text/javascript">
	var contexto = '$AbsoluteLink';
</script>