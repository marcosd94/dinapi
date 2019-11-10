<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		
		<!-- Facebook sharing information tags -->
		<meta property="og:title" content="$TipoFormulario" />
		
		<title>$TipoFormulario</title>
		<style type="text/css">
			/* Client-specific Styles */
			#outlook a{padding:0;} /* Force Outlook to provide a "view in browser" button. */
			body {
				font-family: 'arial', 'sans-serif';
				font-size: 10px;
				width:100% !important;
				max-width: 100%;
				} 
			@page { margin: 10px; }
			.ReadMsgBody {
				width:100%; }
		 	.ExternalClass {
			 	width:100%;
			 }
			.bloque {
				display: block;
			}
			.dato {
		    display: inline-block;
		    margin: 0;
		    /*padding: 5px;*/
		    width: 20%;
		    float: left;
			}
			h3 {
				border-bottom: 2px solid;
				display: block;
				font-size: 13px;
			}
			p.etiqueta {
				font-weight: bold;
				margin-top: 0px;
				margin-bottom: 0px;
			}
			p.valor {
				margin-top: 0px;
				margin-bottom: 0px;
				font-weight: normal;
			}
			.contenido {
				display: block;
				max-width: 100%;
			}
			
			.lineas {
				display: inline;
				margin-left:15%
			}
			
			.firma {
				display: inline;
				margin-left:18%
			}
		</style>
	</head>
	<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
			
		<h3 class="h3">$TipoFormulario</h3>
		<span><strong>$FechaCreacion</strong></span>
			<% loop Contenido %>
				<% if $cabecera %>
					<div>$cabecera</div>
				<% end_if %>
			<% end_loop %><br /><br />

		<div class="contenido">
			
			<% loop Contenido %>
				<% if $bloque %>				
					<div class="bloque">
					<h3>$bloque</h3>
					</div>
				<% else %>
				<% if $name || $value %>
					<div class="dato">
					<p class="etiqueta">$name</p>
					<p class="valor">
                        <% if $value %> $value <% else %> -- <% end_if %>
                    </p><br />
					</div>					
				<% end_if %>
				<% end_if %>
			<% end_loop %>
		</div>
		<% loop Contenido %>
				<% if $pie %>
					<br><br>
					<div class="row">$pie</div>
				<% end_if %>
		<% end_loop %>
	</body>
</html>