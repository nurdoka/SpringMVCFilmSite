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
	<h3 class="text-center">Film info</h3>
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
		<li>Cast:<ol>
			<c:forEach var="actor" items="${film.actors }">
				<li> Name: ${actor.firstName } ${actor.lastName } </li>
			</c:forEach>
		</ol></li>
	</ul>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>
<!--
	private int id;
	private String title;
	private String description;
	private Integer releaseYear;
	private int languageId;
	private int rentalDuration;
	private double rentalRate;
	private Integer length;
	private double replacementCost;
	private String rating;
	private String specialFeatures;
	private String language; 
-->