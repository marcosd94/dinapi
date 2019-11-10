<div class="col-md-12 col-xs-12 contacto-responsive">
	<div class="col-md-1 col-xs-1 contacto-responsive">
		<i class="fas fa-map-marker-alt"></i>
	</div>
	<div class="col-md-11 col-xs-11">
		<p> R.I. 18 Pitiantuta c/Capitán Nicolás Blinoff, Piso 3. Asunción, Paraguay</p>
	</div>
	<div class="col-md-1 col-xs-1 contacto-responsive">
		<i class="fas fa-phone-volume"></i>
	</div>
	<div class="col-md-11 col-xs-11">
		<p> +595 21 611-308 / +595 21 611-336</p>
	</div>
	<div class="col-md-1 col-xs-1 contacto-responsive">
		<i class="far fa-envelope"></i>
	</div>
	<div class="col-md-11 col-xs-11">
		<p> comercial@avalon.com.py operaciones@avalon.com.py</p>
	</div>
	<div class="col-md-12 col-xs-12 contacto-redes">
		<% if $SiteConfig.FacebookLink %>
			<div class="col-md-1 col-xs-1 center-col">
				<a href="$SiteConfig.FacebookLink.URL" target="_blank"><i class="fab fa-facebook-square fa-2x"></i></a>
			</div>
		<% end_if %>

		<% if $SiteConfig.InstagramLink %>	
			<div class="col-md-1 col-xs-1 center-col">	
				<a href="$SiteConfig.InstagramLink.URL" target="_blank"><i class="fab fa-instagram fa-2x"></i></a>
			</div>						
		<% end_if %>

		<% if $SiteConfig.TwitterLink %>
			<div class="col-md-1 col-xs-1 center-col">		
				<a href="$SiteConfig.TwitterLink.URL" target="_blank"><i class="fab fa-twitter-square fa-2x"></i></a>						
			</div>
		<% end_if %>
		<% if $SiteConfig.LinkedinLink %>
			<div class="col-md-1 col-xs-1 center-col">		
				<a href="$SiteConfig.LinkedinLink.URL" target="_blank"><i class="fab fa-linkedin-in fa-2x"></i></a>
			</div>
		<% end_if %> 
	</div>
</div>
