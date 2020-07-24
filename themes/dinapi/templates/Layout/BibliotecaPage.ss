<div class="col-md-12 clear-section float-left pt-5 "id="information-container">
  <div class="clearfix"></div>
  <div class="row">
    <div class="col-md-3 sidebar-links filter-margin">
      <div class="list-group" id="myList">        
        <ul class="list-group biblioteca-mobile" >
          <li class="list-group-item head-biblioteca collapsed" data-toggle="collapse" data-target="#colapse-filter" aria-expanded="true">            
            <span style="float:left;" class="if-collapsed"><i class="fa fa-filter"></i> MOSTRAR FILTROS</span> 
            <span style="float:left;" class="if-not-collapsed"><i class="fa fa-filter"></i> FILTROS</span> 
            <a class="refresh-filter" id="refresh" href="biblioteca" title="Limpiar filtros"><i class="fa fa-refresh"  id="refresh"></i></a>
          </li>
        </ul>
        <ul class="list-group biblioteca-mobile collapse" id="colapse-filter"> 
          <li class="list-group-item search-biblioteca">
            <form id="SearchForm_SearchForm" action="" method="get"
              enctype="application/x-www-form-urlencoded" 
              class="col-md-12 col-xs-12">    
              <div class="input-group" >                
                  <input type="text" name="busqueda" value="$busqueda" id="busqueda" 
                  class="text form-control search-input" 
                  placeholder="Título, Categoría, Etiqueta">  
                  <button class="action btn btn-primary search-button" type="submit">Buscar</button>      
              </div>
            </form>
          </li>
          <% loop ListaCategorias %>
            <a class="list-group-item d-flex justify-content-between align-items-center item-categoria" id="categoria-mobile-$ID"  href="biblioteca/$ID">$Categoria
            <span class="badge badge-primary badge-pill">$Cantidad</span></a>
          <% end_loop %>
        </ul>
        <ul class="list-group biblioteca-desktop">
          <li class="list-group-item head-biblioteca biblioteca-desktop">            
           <span style="float:left;"><i class="fa fa-filter"></i> FILTROS</span> 
           <a class="refresh-filter" id="refresh" href="biblioteca" title="Limpiar filtros"><i class="fa fa-refresh"  id="refresh"></i></a>
          </li>
          <li class="list-group-item search-biblioteca">
            <form id="SearchForm_SearchForm" action="" method="get"
              enctype="application/x-www-form-urlencoded" 
              class="col-md-12 col-xs-12">    
              <div class="input-group" >                
                  <input type="text" name="busqueda" value="$busqueda" id="busqueda" 
                  class="text form-control search-input" 
                  placeholder="Título, Categoría, Etiqueta">  
                  <button class="action btn btn-primary search-button" type="submit">Buscar</button>      
              </div>
            </form>
          </li>
          <% loop ListaCategorias %>
            <a class="list-group-item d-flex justify-content-between align-items-center item-categoria" id="categoria-$ID"  href="biblioteca/$ID">$Categoria
            <span class="badge badge-primary badge-pill">$Cantidad</span></a>
          <% end_loop %>
        </ul>
      </div>
    </div>
    <div class="col-md-9">
      <% if ListaBibliotecas %>
        <div class="row">
        <% loop ListaBibliotecas %>
          <div class="mm_entry item-data">
             <div class="item-container">
                <div class="image-cover">
                   <a title="$Titulo" href="bibliotecas/detalle-biblioteca?idBiblioteca=$ID">
                      <div class="cover-overlay no-js-hidden">
                         <div class="book-details">
                            <div class="book-details-content opaque" style="font-size: 6px;">
                               <h2>$Titulo</h2>
                               <p>$Descripcion</p>
                            </div>
                         </div>
                      </div>
                      <img class="unveil-inmediately" src="$ImagenPrincipal" alt="$Titulo"> 
                   </a>
                </div>
             </div>
          </div>
        <% end_loop %>  
      </div>    
      <% else %>
          <p class="alert-result warning-search">No encontramos nada que concuerde con tu búsqueda <i class="far fa-frown fa-2x" aria-hidden="true"></i></p>
      <% end_if %>
      
      <% if $ListaBibliotecas.Pages %>
        <div class="row">
        <div id="PageNumbers" class="page-number">
            <nav>
            <ul class="pagination">
                <% if $ListaBibliotecas.NotFirstPage %>
                <li> <a href="$ListaBibliotecas.PrevLink" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a> </li>
                <% else %>
                <li class="disabled"> <a href="#" onclick="return false;" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a> </li>
                <% end_if %>
                <% loop $ListaBibliotecas.Pages %>
                <% if $CurrentBool %>
                <li class="active"><a href="#">$PageNum</a></li>
                <% else %>
                <li><a href="$Link" title="Ir a página $PageNum" class="go-to-page">$PageNum</a></li>
                <% end_if %>
                <% end_loop %>
                <% if $ListaBibliotecas.NotLastPage %>
                <li> <a href="$ListaBibliotecas.NextLink" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>
                <% else %>
                <li class="disabled"> <a href="#" onclick="return false;" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>
                <% end_if %>
            </ul>
            </nav>
        </div>
      </div>
    <% end_if %>

    </div>
  </div>
</div>


<script type="text/javascript">    
      $(document).ready(function(){

        $('#myList a').on('click', function (e) {
          e.preventDefault();
          id = e.target.id.replace('categoria-', '');
          if(id == 'refresh'){
            location.href='biblioteca';
          }else{ 
            const queryString = window.location.search;
            const urlParams = new URLSearchParams(queryString);
            var busqueda = urlParams.get('busqueda');  
            if(urlParams.has('busqueda') && busqueda != ''){           
              location.href='biblioteca/'+id+'?busqueda='+busqueda;
            }else{
              location.href='biblioteca/'+id;
            }
          }
        })
        
        var res = window.location.pathname.split("/");
        if(typeof res[3] != "undefined"){
          var element = document.getElementById("categoria-"+res[3]);
          element.classList.add("active");
          var element = document.getElementById("categoria-mobile-"+res[3]);
          element.classList.add("active");
        }
      });
</script>