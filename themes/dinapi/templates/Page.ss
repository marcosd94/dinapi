<!DOCTYPE html>
<html lang="es" class="clear-section">
  <head>
    <% base_tag %>   
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-153516774-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-153516774-1');
    </script> 
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Ubuntu&display=swap" rel="stylesheet">
    
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="maximum-scale=2.0" />

    <!--Tags-->

    <!--Google-->
    <meta
      name="description"
      content="La DINAPI es el ente público que diseña, implementa y fomenta y coordina las políticas de propiedad intelectual en el Paraguay"
    />
    <meta
      name="keywords"
      content="propiedad intelectual, derecho de autor, observancia, patentes"
    />

    <!--Facebook-->
    <meta
      property="og:title"
      content="DINAPI: Dirección Nacional de Propiedad Intelectual"
    />
    <meta
      property="og:description"
      content="La DINAPI es el ente público que diseña, implementa y fomenta y coordina las políticas de propiedad intelectual en el Paraguay"
    />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="$ThemeDir/img/logo.png" />
    <meta property="og:url" content="url-here" />

    <!--Twitter-->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:url" content="url-here" />
    <meta property="twitter:image" content="$ThemeDir/img/logo.png" />
    <meta
      name="twitter:title"
      content="DINAPI: Dirección Nacional de Propiedad Intelectual"
    />
    <meta
      name="twitter:description"
      content="La DINAPI es el ente público que diseña, implementa y fomenta y coordina las políticas de propiedad intelectual en el Paraguay"
    />

    <title>DINAPI | Dirección Nacional de Propiedad Intelectual</title>
    <link href="$ThemeDir/css/bootstrap.css" rel="stylesheet" />
    <link href="$ThemeDir/css/app.css" rel="stylesheet" />
    <link href="$ThemeDir/css/owl-banners.css" rel="stylesheet" />
    <script src="$ThemeDir/js/jquery.min.js"></script>
    <script src="$ThemeDir/js/bootstrap.min.js"></script>
    <script src="$ThemeDir/js/popper.min.js"></script>
    <script src="$ThemeDir/js/vue.min.js"></script>
    <script src="$ThemeDir/js/anime.min.js"></script>
    <script src="$ThemeDir/js/owl.carousel.min.js"></script>
    <script src="$ThemeDir/js/fontawesome.min.js"></script>
    <script src="$ThemeDir/js/carousel.js"></script>
    <script type="text/javascript" src="$ThemeDir/js/app.js"></script>
    <script src="$ThemeDir/js/parallax.js"></script>
    <link rel="icon" type="image/png" href="$ThemeDir/img/icono.png" />

    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans&display=swap" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />


    <script type="text/javascript">
        var contexto = "{$AbsoluteLink}";
        var baseurl = "{$BaseHref}";
    </script>

    
    <%-- <script type="text/javascript">   
      //$SiteConfig.TextoCopyright    
      $(document).ready(function(){
        //$('#exampleModalLong').css('display','none');
        $('#exampleModalLong').modal('show');
      });
    </script> --%>
    
    <script type="text/javascript">
      // Grabar
      function setCookie(name, value, expires, path, domain, secure) {
         document.cookie = name + "=" + escape(value) +((expires == null) ? "" : "; expires=" + expires.toGMTString()) +
         ((path == null) ? "" : "; path=" + path) +((domain == null) ? "" : "; domain=" + domain) +
         ((secure == null) ? "" : "; secure");
      }
      // Leer
      function getCookie(name){
         var cname = name + "=";
         var dc = document.cookie;
         if (dc.length > 0) {
            begin = dc.indexOf(cname);
            if (begin != -1) {
                  begin += cname.length;
                  end = dc.indexOf(";", begin);
                  if (end == -1) end = dc.length;
                     return unescape(dc.substring(begin, end));
                  }
            }
         return null;
      }
      //Borrar
      function delCookie (name,path,domain) {
         if (getCookie(name)) {
            document.cookie = name + "=" + ((path == null) ? "" : "; path=" + path) +
            ((domain == null) ? "" : "; domain=" + domain) + "; expires=Thu, 01-Jan-70 00:00:01 GMT";
         }
         }
      </script>
      <script type="text/javascript">
        
         <% if $SiteConfig.MostrarPopUp  %>
            var comprobar = getCookie("avisooff1");
            if (comprobar != null) {
            }
            else {
            var expiration = new Date();
            expiration.setTime(expiration.getTime() + (60000*60*24*1));
            setCookie("avisooff1","1",expiration, '/');
            //document.getElementById("aviso_off").style.display="block";
            
                $(document).ready(function(){
                //$('#exampleModalLong').css('display','none');
                $('#exampleModalLong').modal('show');
                });
            }
            
         <% else %>
         
            var comprobar = getCookie("avisooff1");
            if (comprobar != null) {
              delCookie("avisooff1");
              console.log("cookie eliminada");
            }
         <% end_if %>
      </script>
    
  </head>
  <body id="page-top" >    
    <div id="app" class="clear-section">
      <header>
        <div class="row">
          <img src="$ThemeDir/img/logo_nacional.png" class="center-block col-md-12 col-12 col-sm-12 mb-2 mt-2 img-fluid" onclick="location.href='$BaseHref';">
        </div>        
      </header>
      <a href="{$getFullURL}#page-top" v-bind:class=" 'navigate ' + (section == 'head' ? 'notShow' : 'show')" id="top">
        <i class="fas fa-angle-up fa-5x mr-5"></i>
      </a>
      <% include Header %>
      <% if $Form %>
          $Form
      <% else %>
      <!-- Header -->
          $Layout
      <% end_if %>
      <!-- Footer -->
      <% include Footer %>
    </div>


    

    <!-- Button trigger modal -->
    <!--button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
      Launch demo modal
    </button-->

    <!-- Modal -->
    <div class="modal fade bd-example-modal-lg" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <!--h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5-->
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <img src="$SiteConfig.ImagenCompleta.URL" class="img-fluid">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            <!--button type="button" class="btn btn-primary">Save changes</button-->
          </div>
        </div>
      </div>
    </div>
  </body>
</html>



<%-- <script>

  $SiteConfig.TextoCopyright
	var sucursales = [];
	<% loop ListaSucursales %>
		var sucursal = {};
		sucursal.nombre = "{$Nombre}";
		sucursal.latitud = "{$Latitud}";
		sucursal.longitud = "{$Longitud}";
		// sucursal.foto = "{$Foto.CroppedImage(200,150).URL}";
		sucursal.horario = "{$HorarioAtencion}";
		sucursales.push(sucursal);
	<% end_loop %>
</script> --%>

