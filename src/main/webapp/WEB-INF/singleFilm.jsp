<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film info</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
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
					<li class="nav-item active"><a class="nav-link" href="home.do">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	<h3 class="text-center">FILM INFO</h3>
	<ul>
		<li>Title: ${film.title }</li>
		<li>Description: ${film.description }</li>
		<li>Release year: ${film.releaseYear }</li>
		<li>Rental duration: ${film.rentalDuration }</li>
		<li>Rental rate: $${film.rentalRate }</li>
		<li>Length: ${film.length }</li>
		<li>Replacement cost: $${film.replacementCost }</li>
		<li>Rating: ${film.rating }</li>
		<li>Special features: ${film.specialFeatures }</li>
		<li>Language: ${film.language }</li>
		<li>Category: ${film.category }</li>
		<li>Cast:<ol>
			<c:forEach var="actor" items="${film.actors }">
				<li> Name: ${actor.firstName } ${actor.lastName } </li>
			</c:forEach>
		</ol></li>
	</ul>
	
	<button class="btn btn-primary" onclick="goBack()">Go Back</button>


    <script>
        function goBack() {
            window.history.back();
        }
    </script>
    
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>
