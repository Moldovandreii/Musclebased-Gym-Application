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
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
	
  <c:choose>  
	
	 <c:when test="${mode=='MODE_HOME'}"> 
	<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to Muscle Based App</h1>
					<h3>Achieve your goals</h3>
				</div>
	</div>
	
   	</c:when> 
	
	<c:when test="${mode=='MODE_REGISTER'}">  
	<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>	
  	</c:when>

	<c:when test="${ mode=='ALL_USERS' }">
	<div class="container text-center" id="tasksDiv">
				<h3>All Users</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>  
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users }">
								<tr>
									<td>${user.id}</td> 
									<td>${user.username}</td>
									<td><a href="/delete-user?id=${user.id}"><span class = "glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-user?id=${user.id}"><span class = "glyphicon glyphicon-pencil"></span></a></td>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>  
	</c:when>
	
	<c:when test="${mode=='MODE_UPDATE'}">  
	<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
	</c:when>
			
	<c:when test="${mode=='MODE_LOGIN'}">  
	<div class="container text-center">
				<h3>Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="login-user"> 
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
				</form>
			</div>
  	</c:when>
  	
  	<c:when test="${mode=='ALL_EXERCISES'}">
  	<div class="container text-center" id="tasksDiv"> 
  		<h3>All Exercises</h3>
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
  							<td>${exercise.id}</td>
  							<td>${exercise.name}</td>
  							<td>${exercise.muscleGroup}</td>
  							<td>${exercise.difficulty}</td>
  					</c:forEach>
  				</tbody>
  			</table>
  		</div>
  		<div>
  			<form class="form-horizontal" method="post" action="search-exercise">
  			<label>Exercise number</label>
  			<input type="text" name="number" placeholder="Enter exercise number">
  			<input type="submit" value="Search">
  			</form>
  		</div>
  	</div>  
  	</c:when>

	<c:when test="${mode=='MUSCLE_GROUPS'}">
		<div id=main-header>
			<h2>Choose a muscle group</h2>
		</div>	
		<div class="split left">
			<div class="centered">
				<img src="static/images/muscle.jpg" alt="Muscle Image" width=600 height=600 usemap="#musclemap">
				<map name="musclemap">
					<area shape="rect" coords="104, 115, 209, 171" href="/chest" alt="Chest Link">
					<area shape="rect" coords="479, 104, 372, 263" href="/back" alt="Back Link">
					<area shape="rect" coords="95, 273, 217, 434" href="/legs" alt="Legs Link">
					<area shape="rect" coords="94, 168, 211, 290" href="/abs" alt="Abs Link">
					<area shape="circle" coords="90, 107, 32" href="/shoulders" alt="Shoulder1 Link">
					<area shape="circle" coords="228, 120, 31" href="/shoulders" alt="Shoulder2 Link">
					<area shape="rect" coords="102, 143, 65, 220" href="/biceps" alt="Biceps1 Link">
					<area shape="rect" coords="253, 151, 205, 234" href="/biceps" alt="Biceps2 Link">
					<area shape="rect" coords="373, 149, 328, 230" href="/triceps" alt="Triceps1 Link">
					<area shape="rect" coords="523, 151, 468, 231" href="/triceps" alt="Triceps2 Link">
				
				</map>
			</div>	
		</div>
		<div class="split right">
			<div class="centered">
				<a href="/abs" class="btn btn-danger btn-lg" role="button" >Abs</a>
				<a href="/shoulders" class="btn btn-danger btn-lg" role="button" >Shoulders</a>
				<a href="/biceps" class="btn btn-danger btn-lg" role="button" >Biceps</a>
				<a href="/triceps" class="btn btn-danger btn-lg" role="button" >Triceps</a>
				<a href="/chest" class="btn btn-danger btn-lg" role="button" >Chest</a>
				<a href="/back" class="btn btn-danger btn-lg" role="button" >Back</a>
				<a href="/legs" class="btn btn-danger btn-lg" role="button" >Legs</a>
			</div>	
		</div>
		
	</c:when>
	

	</c:choose>  
<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>

</html>