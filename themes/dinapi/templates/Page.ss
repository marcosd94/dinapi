<!DOCTYPE html>
<html lang="es" class="clear-section">
  <head>
    <% base_tag %>    
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
    
  </head>
  <body id="page-top" >    
    <div id="app" class="clear-section">  
      <header>
        <div class="row">
          <img src="$ThemeDir/img/logo.png" class="center-block col-md-2 col-8 col-sm-6 mb-2 mt-2 img-fluid" onclick="location.href='$BaseHref';">
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
  </body>
</html>