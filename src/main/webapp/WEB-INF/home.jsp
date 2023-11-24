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
</head>
<body>
	<h1 class="text-center">Welcome to MVC Film Site</h1>
	<br>
	<form class="text-center" action="GetFilmDataById.do" method="GET">
		Film ID Search: <input type="text" name="id" /> 
						<input class="btn btn-primary" type="submit" value="Get Film By Id" />
	</form>
	<br>
	<form class="text-center" action="GetFilmDataByKeyword.do" method="GET">
		Keyword Search: <input type="text" name="keyword" /> 
						<input class="btn btn-primary" type="submit" value="Get Film By Keyword" />
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>