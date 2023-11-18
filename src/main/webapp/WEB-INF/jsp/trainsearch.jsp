<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search Page</title>
</head>
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

</style>
<form action="login">
	<input type="submit" value="Logout">
</form>
</left>
<form action="trainlist" method="post">
	<h3>Search your Train here</h3>
	Enter Station From <select name="source">
		<option>Enter the station from</option>
		<option value="khammam">Khammam</option>
		<option value="vijayawada">Vijayawada</option>
	</select>&nbsp &nbsp&nbsp &nbsp Enter Destination <select name="destination">
		<option>Enter the Destination station</option>
		<option value="vizag">vizag</option>
		<option value="khammam">Khammam</option>
		<option value="tirupati">Tirupati</option>
		<option value="vijayawada">Vijayawada</option>
	</select> <br>
	<br> <input type="submit" value="search">
</form>
</body>
</html>