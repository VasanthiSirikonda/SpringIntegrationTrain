<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
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
form {
	display: flex;
	flex-direction: column;
	position: center;
}

h2 {
	font-size: 2rem;
	margin-bottom: 15px;
	color: #fff;
}
a {
	color: white;
}
</style>
<body>
	<div class="wrapper">
		<br>
		<form method="post" action="traindetails">
		<h2>Indian Railway Enquiry</h2>
			<a href="https://www.irctc.co.in/nget/train-search" target="_blank">Book
				Train Tickets</a>&nbsp &nbsp<br>
			<br>
			<h3>
				<p style="color: white;">Enter Train Number</p>
				<h3>
					<br>
					<br> <input type="text" placeholder="Train number"
						name="trainno"><br>
					<br> <input type="submit" value="Get Details"><br>
					<br>
		</form>
		&nbsp &nbsp
		<form action="trainlist">
			<input type="submit" value="Get Train List">
		</form>
	</div>
</body>
</html>