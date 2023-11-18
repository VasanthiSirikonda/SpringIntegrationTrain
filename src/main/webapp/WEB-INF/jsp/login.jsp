<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
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
	width: 400px;
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

.input-field {
	position: relative;
	border-bottom: 2px solid #ccc;
	margin: 15px 0;
}

.input-field label {
	position: absolute;
	top: 50%;
	left: 0;
	transform: translateY(-50%);
	color: #fff;
	font-size: 16px;
	pointer-events: none;
	transition: 0.15s ease;
}

.input-field input {
	width: 100%;
	height: 40px;
	background: transparent;
	border: none;
	outline: none;
	font-size: 16px;
	color: #fff;
}

.input-field input:focus ~label, .input-field input:valid ~label {
	font-size: 0.8rem;
	top: 10px;
	transform: translateY(-120%);
}

.forget {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin: 25px 0 35px 0;
	color: #fff;
}

#remember {
	accent-color: #fff;
}

.forget label {
	display: flex;
	align-items: center;
}

.forget label p {
	margin-left: 8px;
}

.wrapper a {
	color: #efefef;
	text-decoration: none;
}

.wrapper a:hover {
	text-decoration: underline;
}

button {
	background: #fff;
	color: #000;
	font-weight: 600;
	border: none;
	padding: 12px 20px;
	cursor: pointer;
	border-radius: 3px;
	font-size: 16px;
	border: 2px solid transparent;
	transition: 0.3s ease;
}

button:hover {
	color: #fff;
	border-color: #fff;
	background: rgba(255, 255, 255, 0.15);
}

.register {
	text-align: center;
	margin-top: 30px;
	color: #fff;
}
</style>
</head>
<body>
	<div class="wrapper">
		<form action="loginvalues" method="post">
			<h2>Login</h2>
			<div class="input-field">
				<input type="email" name="email" required> <label>Enter your email</label>
			</div>
			<div class="input-field">
				<input type="password" name="password" required> <label>Enter your
					password</label>
			</div>
			<div class="forget">
				<label for="remember" > <input type="checkbox" id="remember">
					<p>Remember me</p>
				</label> <a href="#">Forgot password?</a>
			</div>
			<button type="submit">Log In</button>
			<div class="register">
				<p>
					Don't have an account? <a href="<%= request.getContextPath()%>/register">Register</a>
				</p>
			</div>
		</form>
	</div>
</body>
</html>