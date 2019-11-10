<div id="menu">
  <nav class="navbar navbar-dark bg-primary navbar-expand-lg">
    <button
      class="navbar-toggler"
      type="button"
      data-toggle="collapse"
      data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link font-fira" href="<?php echo $URL_Base; ?>index.php"
            >Inicio <span class="sr-only">(current)</span></a
          >
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo $URL_Base; ?>institucional.php">
            Institucional
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo $URL_Base; ?>derecho_autor/index.php">
            Derecho de Autor
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Propiedad Industrial
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="<?php echo $URL_Base; ?>propiedad_industrial/marcas/index.php">Marcas</a>
            <a class="dropdown-item" href="<?php echo $URL_Base; ?>propiedad_industrial/patentes/index.php">Patentes</a>
            <a class="dropdown-item" href="<?php echo $URL_Base; ?>propiedad_industrial/dibujos/index.php">Dibujos y Modelos Industriales</a>
            <a class="dropdown-item" href="<?php echo $URL_Base; ?>propiedad_industrial/igydo/index.php">IG&DO</a>
            <a class="dropdown-item" href="<?php echo $URL_Base; ?>propiedad_industrial/gestiones/index.php">Gestiones Administrativas</a>
            <a class="dropdown-item" href="https://servicios.dinapi.gov.py/resoluciones/">
              Resoluciones de la DGPI
            </a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo $URL_Base; ?>observancia/index.php">Observancia</a>
        </li>
      </ul>
      <ul class="navbar-nav  mr-auto">
        <% loop $Menu(1) %>
          <% if Children %>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle $LinkingMode" href="#" id="$Title" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              $MenuTitle
              </a>                     
              <div class="dropdown-menu" aria-labelledby="$Title">
                  
                  <% loop Children %>
                    <% if Children %>                              
                        <a class="nav-link dropdown-toggle $LinkingMode" href="#" id="$Title" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          $MenuTitle
                        </a>
                        
                        <div class="dropdown-menu $Title" aria-labelledby="$Title">
                          <% loop Children %>                                    
                            <a href="$Link" class="dropdown-item $LinkingMode">
                              $MenuTitle
                            </a>
                          <% end_loop %>
                          </div>
                    <% else %>
                        <a href="$Link" class="dropdown-item $LinkingMode">
                          $MenuTitle
                        </a>
                    <% end_if %>
                  <% end_loop %>
              </div>
            </li>
          <% else %>
            <li class="nav-item"> 
              <a class="nav-link $LinkingMode" href="$Link">
                $MenuTitle
              </a> 
            </li>
          <% end_if %>
        <% end_loop %>
      </ul>
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="<?php echo $URL_Base; ?>centro_noticias.php">
            Centro de Noticias
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://servicios.dinapi.gov.py/red_PI/frontend/revista.php">
            RedPI
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://servicios.dinapi.gov.py/">
            Servicios
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo $URL_Base; ?>contacto.php">
            Contáctenos
          </a>
        </li>
        <li class="nav-item">
          <a target="_blank" class="nav-link" href="https://sts.dinapi.gov.py/adfs/ls/?client-request-id=40a975a2-525f-47e5-9e0a-ca12d21db238&username=&wa=wsignin1.0&wtrealm=urn%3afederation%3aMicrosoftOnline&wctx=estsredirect%3d2%26estsrequest%3drQIIAY2RO2_TUACFc-PUagOIqurAUtGBCena19eJr22JigTn1SaliWhIvESxY8dO6lzHj7QJv4CtQkwdGLoRiaULiD-AlKli7I6EGBBiYiQRCxt8w9EZj77zkBE4QX2A_oDhKiGybQGa1qr9RbCV3ryM3z7uNL6U3qQXW593ruQLcKfnjrq-y_XphPOnc3DfiSI_VHmextEJpUOO2rZrWpxJPZ6edvkPAFwDME8SSZQkhAmSFElEMhGIwiFZIQQrBBpkOSVjIAXKSteCXVO0UAZh2cTGTfLu01wcOXgVNHBn1s_khk0Dr-PTMLpgXgPNjPJaWOkXCvkGqsaZWi_XKFFdP6wKmjHT6q5-QI36oGmVI31S7ZDn7olAhlLPcaTiadvMaW6xLue1M8erO4VxZXCYG-W9Z4W8d9wPnaDWKtXKRbJfjYnYak8Gs1rTHmS9yJhmA7ENO90zCDtPGmIYhn57HB_jqDyplOfMfym-YtilJ4-OFgxLfWvk9q5T4FvqNmLU9XV2E9xL7CZ-pcDl2vKKV7e47y8_vau9f6Hs2XozsVjjcatoj8kUlS2-Ze_H_vCoj4qmcRCGQTgYHuUKEu-4bbGiD8NHkiqcs-CcZb-y4Aeb-Ljxr-Nu0tsYCTJEGYizu4KkioKawfpv0">
            Webmail
          </a>
        </li>
      </ul>
      <form class="form-inline my-2 my-lg-0" method="POST" action="<?php echo $URL_Base; ?>buscar.php">
        <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" name="filtro">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
      </form>
    </div>
  </nav>
</div> 