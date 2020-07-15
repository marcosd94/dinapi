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
         <% if $Padre %>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle $LinkingMode" href="#" id="$Titulo" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              $Titulo
              </a>                     
              <div class="dropdown-menu" aria-labelledby="$Titulo">                  
                  <% loop $getHijos() %>
                      <% if $LinkExterno != "" %>
                        <a class="dropdown-item $LinkingMode" id="$ID" href="$LinkExterno" target="_blank" 
                        <% if $Destacado %> style="color: #8cc63e !important;" <% end_if %>  >
                          $Titulo
                        </a>
                      <% else %>
                        <a class="dropdown-item $LinkingMode" id="$ID" href="{$get_permalink($LinkInterno)}"
                        <% if $Destacado %> style="color: #8cc63e !important;" <% end_if %>  >
                          $Titulo
                        </a>
                      <% end_if %>
                  <% end_loop %>
              </div>
            </li>
         <% else %>
          <% if $Hijo == 0 %>
            <li class="nav-item">
            <% if $LinkExterno != "" %>
              <a class="$LinkingMode nav-link" id="$ID" href="$LinkExterno" target="_blank" 
              <% if $Destacado %> style="color: #8cc63e !important;" <% end_if %>  >
                $Titulo
              </a>
            <% else %>
              <a class="$LinkingMode nav-link" id="$ID" href="{$get_permalink($LinkInterno)}"
              <% if $Destacado %> style="color: #8cc63e !important;" <% end_if %>  >
                $Titulo
              </a>
            <% end_if %>          
            </li>
          <% end_if %>
         <% end_if %>
          
        <% end_loop %>
            <%--     <li class="nav-item">
            <a class="nav-link" id="10000000" href="{$BaseHref}documentos">
              Documentos
            </a>      
        </li> --%>

        </ul>
      <% end_if %>
      <%-- <form class="form-inline my-2 my-lg-0" method="POST" action="<?php echo $URL_Base; ?>buscar.php">
        <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" name="filtro">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
      </form> --%>
      
				<form class="form-inline my-2 my-lg-0" action="{$BaseHref}home/SearchForm" method="get">
					<%-- <input type="text" value="$Busqueda" class="ft" name="q" placeholder="Buscar"/> --%>
          <input class="form-control mr-sm-2" value="$Busqueda" type="search" placeholder="Buscar" aria-label="Search" name="Search">
					<%-- <input type="submit" value="" class="fs"> --%>
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
				</form>
    </div>
  </nav>
</div> 


