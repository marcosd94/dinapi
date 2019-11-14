<div class="main-breadcrumbs">
	<% if $Level(2) %>
		$Breadcrumbs
	<% else %>
		<ol class="breadcrumb pull-right">
			<li>
				<a href="{$BaseHref}" title="{$SiteConfig.Title}">INICIO</a>
			</li>
			
			<li class="active">
				$MenuTitle.XML
			</li>
		</ol>
	<% end_if %>
</div>