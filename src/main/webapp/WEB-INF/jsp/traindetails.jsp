<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.infinite.ds.HikariDatasource"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>

* {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

.banner {
	width: 100%;
	height: 100vh;
	background-image: linear-gradient(rgba(0, 0, 0, 0.75),
		rgba(0, 0, 0, 0.75)),
		url(https://images.unsplash.com/photo-1598881298757-0724dc0f905a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2073&q=80);
	background-size: cover;
	background-position: center;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Open Sans", sans-serif;
}

body {
	display: flex;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	width: 100%;
	padding: 0 10px;
}

body::before {
	content: "";
	position: absolute;
	width: 100%;
	height: 100%;
	background:
		url("https://images.unsplash.com/photo-1598881298757-0724dc0f905a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2073&q=80"),
		#000;
	background-position: center;
	background-size: cover;
}

.wrapper {
	width: 700px;
	height:550px;
	border-radius: 8px;
	padding: 30px;
	text-align: center;
	border: 1px solid rgba(255, 255, 255, 0.5);
	backdrop-filter: blur(9px);
	-webkit-backdrop-filter: blur(9px);
}

.logout-form {

  position: absolute;

  top: 10px;

  left: 10px;

}

 

.logout-form input[type="submit"] {

  background: none;

  border: none;

  color: #007bff; /* Button color */

  cursor: pointer;

}

 

.logout-form input[type="submit"]:hover {

  color: #0056b3; /* Button color on hover */

}
table, th, td {
  border: 1px solid white;
  border-collapse: collapse;
}
th, td {
  background-color: #96D4D4;
}
</style>
<title>Train Details Page</title>
</head>
<body>
	<%@include file="home.jsp"%>
	<br>
	<left>
	<div class="wrapper">
	<form action="login">
		<input type="submit" value="Logout">
	</form>
	</left>
	<%
		ResultSet rs = null;
		Connection con = null;
		response.setContentType("text/html");
		PrintWriter ou = response.getWriter();
		DataSource datasource = HikariDatasource.getDataSource();
		con = datasource.getConnection();
		PreparedStatement ps = con.prepareStatement("Select *from traindetails where trainno=?;");
		ps.setString(1, request.getParameter("trainno"));
		rs = ps.executeQuery();
		out.println("<html><body><center><h2>Displaying Train Details</h2></center><br></body></html");
		while (rs.next()) {
			out.println(
					"<html><body><center><table><tr><th>Train Number</th><th>Train Name</th><th>Source</th><th>Destination</th><th>Time</th></tr><tr><td>"
							+ rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3)
							+ "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5)
							+ "</td></tr></center><br></body></html>");
		}
	%>
	</div>
</body>
</html>