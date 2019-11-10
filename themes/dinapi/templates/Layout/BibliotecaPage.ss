<% include HeaderImage %>

<div class="section">	
	<div class="row lista-convenios" style="padding-left: 20px">
		<div class="row">
		<div class="col-xs-10 col-md-10 col-md-offset-1">
			<hr>
				<table>
					<tbody>
						<tr>
							<th>NOMBRE</th>
							<th>FECHA CREACION</th>
							<th>VER ARCHIVO</th>
						</tr>
						<% loop ListaBibliotecas %>
						<tr>
							<td>$Nombre</td>
							<td>$Created</td>
							<td>
								<a target="_blank" href="$Pdf.URL">
									<i class="far fa-file-pdf fa-2x" ></i>
								</a>
							</td>
						</tr>
						<% end_loop %>
					</tbody>
				</table>

			
		</div>
		</div>
	</div>

	</div>
</div>