<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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

.navbar {
	width: 85%;
	margin: auto;
	padding: 35px 0;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.logo {
	width: 120px;
	cursor: pointer;
}

.navbar ul li {
	list-style: none;
	display: inline-block;
	margin: 0 20px;
	position: relative;
}

.navbar ul li a {
	text-decoration: none;
	color: #fff;
	text-transform: uppercase;
}

.navbar ul li::after {
	content: '';
	height: 3px;
	width: 0%;
	background: #009688;
	position: absolute;
	left: 0;
	bottom: -10px;
	transition: 0.5s;
}

.navbar ul li:hover::after {
	width: 100%;
}

.content {
	width: 100%;
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	text-align: center;
	color: #fff;
}

.content h1 {
	font-size: 70px;
	margin-top: 80px;
}

.content p {
	margin: 20px auto;
	font-weight: 100;
	line-height: 25px;
}

button {
	width: 200px;
	padding: 15px 0;
	text-align: center;
	margin: 20px 10px;
	border-radius: 25px;
	font-weight: bold;
	border: 2px solid #009688;
	background: transparent;
	color: #fff;
	cursor: pointer;
	position: relative;
	overflow: hidden;
}

span {
	background: #009688;
	height: 100%;
	width: 0%;
	border-radius: 25px;
	position: absolute;
	left: 0;
	bottom: 0;
	z-index: -1;
	transition: 0.5s;
}

button:hover span {
	width: 100%;
}

button:hover {
	border: none;
}

/* Style for the target section */
#targetSection {
	background-color: #f0f0f0;
	padding: 20px;
}

/* Style for the services */
.services {
	display: flex;
	justify-content: space-between;
}

.service {
	flex: 1;
	text-align: center;
	padding: 20px;
}

.service img {
	max-width: 100%;
}

/* Optional style for the service titles and descriptions */
.service h3 {
	color: #333;
	font-size: 18px;
}

.service p {
	color: #555;
}
body {

    font-family: Arial, sans-serif;

    background-color: #f0f0f0;

    margin: 0;

    padding: 0;

}

 

.video-section {

    max-width: 800px;

    margin: 0 auto;

    text-align: center;

    background-color: #fff;

    padding: 20px;

    border-radius: 10px;

    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);

}

 

h1 {

    font-size: 24px;

    color: #333;

}

 

video {

    width: 100%;

    height: auto;

}

 

p {

    font-size: 16px;

    color: #666;

    margin-top: 10px;

}
</style>
</head>
<body>
	<section>
		<div class="banner">
			<div class="navbar">
				<img scr="images/logo.png" class="logo">
				<ul>
					<li><a href="https://www.google.com">Home</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="register">Register</a></li>
					<li><a href="#">Help</a></li>
				</ul>
			</div>
		</div>
		<div class="content">
			<h1><b>Make My Trip</b></h1>
			<p>Make a safe,secure and comfortable journey.</p>
			<div>
				<button type="button">
					<span></span>Explore Now
				</button>
			</div>
		</div>
	</section>
	<!-- Section to scroll to -->
	<section id="targetSection">
		<div class="services">
			<div class="service">
				<img
					src="https://toppng.com/uploads/preview/train-forest-winter-railway-snow-11570346114ptaf54k4bu.jpg"
					alt="Service 1">
				<h3>Snow</h3>
				<p>Chasing winter vibes.</p>
			</div>
			<div class="service">
				<img
					src="https://i.pinimg.com/originals/6e/73/0f/6e730fd1389203826a2c406ac8daa33a.jpg"
					alt="Service 2">
				<h3>Under Water</h3>
				<p>The ocean's roar is music to the soul.</p>
			</div>
			<div class="service">
				<img
					src="https://w0.peakpx.com/wallpaper/105/917/HD-wallpaper-the-long-train-mountain-track-railroad-grass-sky-hill.jpg"
					alt="Service 3">
				<h3>Nature</h3>
				<p>In nature, nothing is perfect and everything is perfect.</p>
			</div>
		</div>
	</section>
	<section>
		<div class="video-section">

        <h1>Watch Our Latest Video</h1>

        <video controls>

            <source src="https://youtu.be/yYAl6eW_M_4" type="video/mp4">
        </video>

        <p>Enjoy this amazing video showcasing our latest products.</p>

    </div>
	</section>

</body>
</html>