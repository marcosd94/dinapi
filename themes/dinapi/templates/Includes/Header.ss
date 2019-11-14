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
      <% if ListaMenus %>	
        <ul class="navbar-nav">
        <% loop ListaMenus %>        
          <li class="nav-item">
          <% if $LinkExterno != "" %>
            <a class="$LinkingMode nav-link" id="$LinkExterno" href="$LinkExterno" target="_blank">
              $Titulo
            </a>
          <% else %>
            <a class="$LinkingMode nav-link" id="{$get_permalink($LinkInterno)}" href="{$get_permalink($LinkInterno)}">
              $Titulo
            </a>
          <% end_if %>          
          </li>
        <% end_loop %>
        </ul>
      <% end_if %>
      <form class="form-inline my-2 my-lg-0" method="POST" action="<?php echo $URL_Base; ?>buscar.php">
        <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" name="filtro">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
      </form>
    </div>
  </nav>
</div> 


