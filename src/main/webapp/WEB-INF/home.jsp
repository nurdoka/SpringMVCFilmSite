<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Film Site</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

    <style>
        body {
            /* Set the background image and adjust related properties */
            background: url('https://cdn.pixabay.com/photo/2018/01/03/01/17/film-3057394_640.jpg') no-repeat center center fixed;
            background-size: cover;
            /* Additional styles for the content */
            color: #fff; /* Set text color to white, adjust as needed */
            text-align: center;
            padding: 20px;
        }
        form {
            background-color: rgba(255, 255, 255, 0.5); /* Transparent white background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
		<div class="container">
			<!-- Brand/logo -->
			<a class="navbar-brand" href="#">My LinkedIn</a>

			<!-- Toggle button for mobile navigation -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Navigation links -->
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
<div class="">
	<h1 class="text-center text-dark">Welcome to MVC Film Site</h1>
	<br>
	<form class="text-center text-dark" action="GetFilmDataById.do" method="GET">
		<strong>Film ID Search:</strong> <input type="text" name="id" /> <input
			class="btn btn-primary" type="submit" value="Get Film By Id" />
	</form>
	<br>
	<form class="text-center text-dark" action="GetFilmDataByKeyword.do" method="GET">
		<strong>Keyword Search:</strong> <input type="text" name="keyword" /> <input
			class="btn btn-primary" type="submit" value="Get Film By Keyword" />
	</form>
	<br>
	<div class="text-center">
	<a  href="ListAllFilms.do" >
		<button class="btn btn-primary"> List all films</button>
	</a>
	</div>
</div>	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>