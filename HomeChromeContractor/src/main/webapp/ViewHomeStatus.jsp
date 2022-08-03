<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "HomeChrome";
String userId = "root";
String password = "maida";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>



<%@ include file="Header.jsp" %>  
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Your Profile</h3>
			<hr>
			<br>
			<table class="table table-bordered"  align="center" cellpadding="5" cellspacing="5" border="1" style="width:80%">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Home Id</th>
						<th>Land Size</th>
						<th>Location</th>
						<th>Floors</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				
				<tbody>
					

		<%
		try{ 
			System.out.println(session.getAttribute("HomeId"));
		connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		statement=connection.createStatement();
		String sql ="SELECT * FROM Contractors  Join Home on Contractors.Homeid=Home.id where Home.id ="+session.getAttribute("Home")+" ";
		
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
		%>
		<tr style="color: #fff" bgcolor="#37517e">
		<th><%=resultSet.getString("id") %></th>
		<th><%=resultSet.getString("cname") %></th>
		<th><%=resultSet.getString("cemail") %></th>
		<th><%=resultSet.getString("HomeId") %></th>
		<th><%=resultSet.getString("LandSize") %></th>
		<th><%=resultSet.getString("Location") %></th>
		<th><%=resultSet.getString("Floors") %></th>
		<th><%=resultSet.getString("status") %></th>

		<th><a href="UpdateHomeStatus.jsp">Update HomeStatus</a></th>
		
		</tr>
		
		<% 
		}
		} catch (Exception e) {
			e.printStackTrace();
			}
			%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>