<%-- <footer class="">
	<div class="container">
		<div class="row footer-hidden">
			<div class="col-md-4 hidden-xs col-xs-12 contacto-responsive">
				<div class="tarjeta-footer">
					<h4 class="texto-blanco">BUSCANOS EN</h4> 
						<% include ContactoInclude %>
				</div>
			</div>
			<div class="col-md-4 hidden-xs col-xs-12 contacto-responsive">
				<div class="tarjeta-footer">
					<h4 class="texto-blanco">PREGUNTAS FRECUENTES</h4>
				      <% loop $ListaPreguntasFrecuentes.Limit(4) %>
						<a href="preguntas-frecuentes">$Pregunta</a>						
						<% if not Last %>
							<hr>
						<% end_if %>
				      <% end_loop %>
				</div>
			</div>
			<div class="col-md-4 hidden-xs col-xs-12 contacto-responsive">
				<div class="tarjeta-footer">
					<h4 class="texto-blanco">ENLACES ÚTILES</h4>
				      <% loop $ListaEnlacesUtiles.Limit(4) %>
						<a target="_blank" href="$Link.URL">$Nombre</a>					
						<% if not Last  %>
							<hr>
						<% end_if %>
				      <% end_loop %>
				</div>
			</div>
		</div>
		<div class="row footer-responsive center">
			<% if $SiteConfig.FacebookLink %>
				<a href="$SiteConfig.FacebookLink.URL" target="_blank"><i class="fab fa-facebook-square fa-2x"></i></a>
			<% end_if %>
			<% if $SiteConfig.InstagramLink %>
				<a href="$SiteConfig.InstagramLink.URL" target="_blank"><i class="fab fa-instagram fa-2x"></i></a>						
			<% end_if %>
			<% if $SiteConfig.TwitterLink %>
				<a href="$SiteConfig.TwitterLink.URL" target="_blank"><i class="fab fa-twitter-square fa-2x"></i></a>						
			<% end_if %>
			<% if $SiteConfig.LinkedinLink %>
				<a href="$SiteConfig.LinkedinLink.URL" target="_blank"><i class="fab fa-linkedin-in fa-2x"></i></a>						
			<% end_if %> 
		</div>
	</div>
	
	<div class="copyright">
		$SiteConfig.TextoCopyright
	</div>
</footer>
 --%>

 <div class="col-md-10 float-left clear-section pt-5 pb-5 offset-md-1" id="footer" v-bind:style=" heightsDivs[3] ">
  <div class="row">
    <div class="titulo-footer col-md-12">
      <h1>
        DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL
      </h1>
    </div>
    <div class="texto-footer center-block col-md-12">
      <p>España 323 casi Estados Unidos</p>
      <p>Tel:+59521210977</p>
      <p>República del Paraguay</p>
    </div>
    <div class="col-md-12">
      <div class="iconos-footer">
        <a target="_blank" href="https://www.facebook.com/DinapiPy/"><i class="fa fa-facebook-square"></i></a>
        <a target="_blank" href="https://twitter.com/dinapipy?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"><i class="fa fa-twitter"></i>
        <a target="_blank" href="https://www.instagram.com/dinapi_py/?hl=es-la"><i class="fa fa-instagram"></i></a>
      </div>
    </div>
  </div>
</div>