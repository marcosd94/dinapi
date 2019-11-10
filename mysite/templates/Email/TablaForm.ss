<table>
	<tbody>
		<% loop $campos %>
			<tr>
				$Me
				<td><strong>$Me.name</strong></td>
				<td>$Me.value</td>
			</tr>
		<% end_loop %>
	</tbody>
</table>