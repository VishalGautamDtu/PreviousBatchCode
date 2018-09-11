<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

	<%
		List<Trade> list = (List<Trade>) request.getAttribute("Trades");
	%>
	<table class="table" border="2">
		<%

			for (Trade e : list) {	
				
				
				 if(e.getFlag()==0) { %>	
				
				<tr bgcolor="#ffffff">
					<td>
						<%
							out.println(e.getTrade_number());
						%>
					</td>
					<td>
						<%
							out.println(e.getName());
						%>
					</td>
					<td>
						<%
							out.println(e.getCandidate());
						%>
					</td>
								<td>
						<%
							out.println(e.getStock());
						%>
					</td>
											<td>
						<%
							out.println(e.getTrade_date());
						%>
					</td>
								<td>
						<%
							out.println(e.getTrade_time());
						%>
					</td>
								<td>
						<%
							out.println(e.getTrade_type());
						%>
					</td>

								<td>
						<%
							out.println(e.getSecurity_type());
						%>
					</td>
								<td>
						<%
							out.println(e.getQuantity());
						%>
					</td>
											<td>
						<%
							out.println(e.getPrice());
						%>
					</td>
											<td>
						<%
							out.println(e.getValue());
						%>
					</td>
						<td>
						<%
							out.println(e.getFlag());
						%>
					</td>			
				</tr>
				<% } %>
		<%  if(e.getFlag()==1) {%>
		<tr bgcolor=" #ff6666">
			<td>
				<%
					out.println(e.getTrade_number());
				%>
			</td>
			<td>
				<%
					out.println(e.getName());
				%>
			</td>
			<td>
				<%
					out.println(e.getCandidate());
				%>
			</td>
						<td>
				<%
					out.println(e.getStock());
				%>
			</td>
									<td>
				<%
					out.println(e.getTrade_date());
				%>
			</td>
						<td>
				<%
					out.println(e.getTrade_time());
				%>
			</td>
						<td>
				<%
					out.println(e.getTrade_type());
				%>
			</td>

						<td>
				<%
					out.println(e.getSecurity_type());
				%>
			</td>
						<td>
				<%
					out.println(e.getQuantity());
				%>
			</td>
									<td>
				<%
					out.println(e.getPrice());
				%>
			</td>
									<td>
				<%
					out.println(e.getValue());
				%>
			</td>
				<td>
				<%
					out.println(e.getFlag());
				%>
			</td>			
		</tr>
		
		<% }%>
		
		
		
		
		
		
	<% if(e.getFlag()==2) { %>	
		<tr bgcolor="#944dff">
			<td>
				<%
					out.println(e.getTrade_number());
				%>
			</td>
			<td>
				<%
					out.println(e.getName());
				%>
			</td>
			<td>
				<%
					out.println(e.getCandidate());
				%>
			</td>
						<td>
				<%
					out.println(e.getStock());
				%>
			</td>
									<td>
				<%
					out.println(e.getTrade_date());
				%>
			</td>
						<td>
				<%
					out.println(e.getTrade_time());
				%>
			</td>
						<td>
				<%
					out.println(e.getTrade_type());
				%>
			</td>

						<td>
				<%
					out.println(e.getSecurity_type());
				%>
			</td>
						<td>
				<%
					out.println(e.getQuantity());
				%>
			</td>
									<td>
				<%
					out.println(e.getPrice());
				%>
			</td>
									<td>
				<%
					out.println(e.getValue());
				%>
			</td>
				<td>
				<%
					out.println(e.getFlag());
				%>
			</td>			
		</tr>
		
		
		<% } %>
		
		
		
	<%  if(e.getFlag()==3) { %>	
		
		<tr bgcolor="#00ff99">
			<td>
				<%
					out.println(e.getTrade_number());
				%>
			</td>
			<td>
				<%
					out.println(e.getName());
				%>
			</td>
			<td>
				<%
					out.println(e.getCandidate());
				%>
			</td>
						<td>
				<%
					out.println(e.getStock());
				%>
			</td>
									<td>
				<%
					out.println(e.getTrade_date());
				%>
			</td>
						<td>
				<%
					out.println(e.getTrade_time());
				%>
			</td>
						<td>
				<%
					out.println(e.getTrade_type());
				%>
			</td>

						<td>
				<%
					out.println(e.getSecurity_type());
				%>
			</td>
						<td>
				<%
					out.println(e.getQuantity());
				%>
			</td>
									<td>
				<%
					out.println(e.getPrice());
				%>
			</td>
									<td>
				<%
					out.println(e.getValue());
				%>
			</td>
				<td>
				<%
					out.println(e.getFlag());
				%>
			</td>			
		</tr>
		<% } %>
		
		
		
	<%  if(e.getFlag()==4) { %>	
		
		<tr bgcolor=" #ffff1a">
			<td>
				<%
					out.println(e.getTrade_number());
				%>
			</td>
			<td>
				<%
					out.println(e.getName());
				%>
			</td>
			<td>
				<%
					out.println(e.getCandidate());
				%>
			</td>
						<td>
				<%
					out.println(e.getStock());
				%>
			</td>
									<td>
				<%
					out.println(e.getTrade_date());
				%>
			</td>
						<td>
				<%
					out.println(e.getTrade_time());
				%>
			</td>
						<td>
				<%
					out.println(e.getTrade_type());
				%>
			</td>

						<td>
				<%
					out.println(e.getSecurity_type());
				%>
			</td>
						<td>
				<%
					out.println(e.getQuantity());
				%>
			</td>
									<td>
				<%
					out.println(e.getPrice());
				%>
			</td>
									<td>
				<%
					out.println(e.getValue());
				%>
			</td>
				<td>
				<%
					out.println(e.getFlag());
				%>
			</td>			
		</tr>
		<% } %> 

 <% } %>
	</table>
</body>
</html>
