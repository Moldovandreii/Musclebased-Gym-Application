<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>gym-app | home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link href="static/css/custom.css" rel="stylesheet">

</head>

<body> 

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">Gym-App</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/register">New Registration</a></li>
					<li><a href="/show-users">All Users</a></li>
					<li><a href="/show-exercises">Exercise List</a></li>
					<li><a href="/muscle-groups">Muscle Groups</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	
	<div class="container text-center" id="tasksDiv"> 
  		<h3>Exercises</h3>
  		<hr>
  		<div class="table-responsive">
  			<table class="table table-striped table-bordered">
  				<thead>
  					<tr>
  						<th>ID</th>
  						<th>Name</th>
  						<th>MuscleGroup</th>
  						<th>Difficulty</th>
  					</tr>
  				</thead>
  				<tbody>
  					<c:forEach var="exercise" items="${exercises}">
  						<tr>
  							<td><a href=${exercise.id}>${exercise.id}</a></td>
  							<td>${exercise.name}</td>
  							<td>${exercise.muscleGroup}</td>
  							<td>${exercise.difficulty}</td>
  					</c:forEach>
  				</tbody>
  			</table>
  		</div>
  	</div>
	
	
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>

</html>
	