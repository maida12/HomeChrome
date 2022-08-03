<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ include file="Header.jsp" %>  


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
						<th>Password</th>
						<th>Email</th>
						<th>Labour-Count</th>
						<th>Price Range</th>
						<th>Home-count</th>
						<th>Rating</th>
						<th>Action</th>
					</tr>
				</thead>
				
				<tbody>
					

		<%
		try{ 
		connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		statement=connection.createStatement();
		String sql ="SELECT * FROM Contractors where id = "+session.getAttribute("ContId")+" ";
		System.out.println(session.getAttribute("ContId"));
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
		%>
		<tr style="color: #fff" bgcolor="#37517e">
		<th><%=resultSet.getString("id") %></th>
		<th><%=resultSet.getString("cname") %></th>
		<th><%=resultSet.getString("cpass") %></th>
		<th><%=resultSet.getString("cemail") %></th>
		<th><%=resultSet.getString("Lcount") %></th>
		<th><%=resultSet.getString("price") %></th>
		<th><%=resultSet.getString("hcount") %></th>
		<th><%=resultSet.getString("rating") %></th>

		<th><a href="UpdateProfile.jsp">Update Profile</a></th>
		
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