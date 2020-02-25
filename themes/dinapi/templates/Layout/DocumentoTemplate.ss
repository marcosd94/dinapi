<%--       <div class="float-left information-header head2 head_noticias">

        <div class="float-left" id="main-image">
          <!--img src="img/logo.png" class="col-md-6 col-sm-12" id="img1" /-->
        </div>
      </div> --%>
      <div class="col-md-12 clear-section float-left pt-5 " id="information-container">

        <div class="row">
            <div class="col-md-3 sidebar-links mt-0">
                <h1>Documentos</h1>
                <div class="lista">
                </div>
            </div>
            <div class="col-md-8 mt-0 information-texto">
                <div class="noticias-texto col-md-12" >
                  <form id="SearchForm_SearchForm" action="/dinapi/documentos" method="get"
                    enctype="application/x-www-form-urlencoded" 
                    class="col-md-12 col-xs-12">
                    <div class="col-md-3" style="display: inline-block;">
                          <input type="text" name="titulo" value="$titulo" id="titulo" 
                          class="text form-control" 
                          placeholder="Titulo del documento">
                    </div>
                    <div class="col-md-3" style="display: inline-block;">
                          <input  type="date" name="desde" value="$desde" id="desde" 
                          class="text form-control" 
                          placeholder="Fecha desde">
                    </div>
                    <div class="col-md-3" style="display: inline-block;" >
                          <input  type="date" name="hasta" value="$hasta" id="hasta" 
                          class="text form-control" 
                          placeholder="Fecha hasta">
                    </div>
                    
                    <div class="col-md-2" style="display: inline-block;">
                            <button class="action  btn btn-primary" type="submit">Buscar</button>
                    </div>
                  </form>
                    <div style="margin-bottom:10px;">
                        <h2>Resultados</h2>
                    </div>
                    <% if ListaDocumentos %>
                        <% loop ListaDocumentos %>
                        
                        <div class="well" >
                              <a target="_blank" href="$Pdf.URL" class="link-documento row">
                                <div class="col-md-9">
                                  <h4 style="margin-top: 0.5rem;">$Titulo</h4> 
                                </div>
                                <div class="col-md-3">
                                  <h4 style="margin-top: 0.5rem;"> [VER DOCUMENTO <i class="fa fa-eye"></i>]</h4>
                                </div>
                              </a>
                            <hr />
                        </div>
                        <%-- <div class="col-md-12">
                          <h4 class="noticias-titulo">
                              $Titulo
                          </h4>
                        </div>
                        <div class="col-md-12 noticias-parrafos">                        
                          <a target="_blank" href="$Pdf.URL">
                            $Titulo</a>
                        </div> --%>
                            
                        <% end_loop %>
                    <% end_if %>
                </div>
            </div>
        </div>
      </div>