

<%-- PARTE DINAMICA --%>
<div class="float-left secondary-header head2 head_institucional" style="background-image: url($Imagen.URL);">
	<div class="header-secondary-image"></div>
	<div class="titulo-pagina-principal ml-5 mt-2 pl-2 pr-5 col-md-4">
		<div class="font-weight-bold">
		$Titulo
		</div>
	</div>
</div>


<div class="col-md-12 clear-section float-left pt-3 " id="secondary-container">
	<div class="clearfix"></div>
	<% if Institucionales %>		
		<div class="row">
		<% loop Institucionales %>
			<% if $MultipleOf(3,0) %>
				</div>
				<div class="row">
			<% end_if %>
			<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">
				<% if $modulo(1, $Pos(1), 6) %>
            		<figure class="eje-box-inner effect-apollo" id="boxsup-2">
				<% else_if $modulo(2, $Pos(1), 6)  %>
            		<figure class="eje-box-inner effect-apollo" id="boxsup-1">
				<% else_if $modulo(3, $Pos(1), 6)  %>
            		<figure class="eje-box-inner effect-apollo" id="boxsup-3">
				<% else_if $modulo(4, $Pos(1), 6)  %>
            		<figure class="eje-box-inner effect-apollo verde-agua">
				<% else_if $modulo(5, $Pos(1), 6)  %>
            		<figure class="eje-box-inner effect-apollo celeste-agua">
				<% else %> 
            		<figure class="eje-box-inner effect-apollo " id="boxsup-31">
				<% end_if %>
				
				<div class="icono-eje mt-5 pl-2 pr-2">
					<!--span class="fas fa-file-signature"></span-->
					<div class="texto-eje h2">$Titulo
					</div>
				</div>
				<figcaption>
					<p>					
					</p>					
					<% if $LinkExterno != "" %>
						<a href="$LinkExterno" target="_blank">Vea más</a>
					<% else %>
						<a href="{$get_permalink($LinkInterno)}">Vea más</a>
					<% end_if %>
				</figcaption>
				</figure>
			</div>
		<% end_loop %>
		</div>
    <% end_if %>
</div>