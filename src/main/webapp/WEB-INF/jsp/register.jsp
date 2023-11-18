<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register Page</title>
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
  background: url("https://images.unsplash.com/photo-1598881298757-0724dc0f905a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2073&q=80"), #000;
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
 

/* Style input and textarea fields */

input[type="text"],

input[type="password"],

textarea,

select {

    width: 100%;

    padding: 10px;

    margin-bottom: 20px;

    border: 1px solid #ccc;

    border-radius: 5px;

}

 

/* Style radio buttons and checkboxes */

input[type="radio"],

input[type="checkbox"] {

    margin-right: 10px;

}

 

/* Style the submit button */

button.registerbtn {

    background-color: rgba(76, 175, 80, 0.8); /* Transparent green background */

    color: white;

    padding: 10px 20px;

    border: none;

    border-radius: 5px;

    cursor: pointer;

}

 

/* Add some spacing for readability */

br {

    clear: both;

}

 

/* Style span for gender */

span {

    display: inline-block;

    margin-right: 10px;

}
.login{
	text-align: center;
	margin-top: 30px;
	color: #fff;
}
</style>
</head>
<body>
	<div class="wrapper">
		<form action="register" method="post">
		<h2>Register</h2>
        <div class="glass-form">
            <input type="text" name="firstname" id="firstname" placeholder="First name"><br>
            <input type="text" name="lastname" id="lastname" placeholder="Last name"><br>
            <input type="text" name="email" id="email" placeholder="E-Mail"><br>
            <input type="text" name="mobileno" id="mobileno" placeholder="Mobile Number"><br>
            <input type="password" name="password" id="password" placeholder="Password"><br>
            <div>
                Gender:
                <input type="radio" name="gender" value="male" id="male"> <span for="male">Male</span>
                <input type="radio" name="Gender" value="female" id="female"> <span for="female">Female</span>
            </div><br>
            <button type="submit" class="registerbtn">Register</button><br>
            <div class="login">
					<p>
						Already have an account?<a href="<%= request.getContextPath()%>/login">Login</a>
					</p>
				</div>
        </div>
    </form>
     </div>
</body>
</html>