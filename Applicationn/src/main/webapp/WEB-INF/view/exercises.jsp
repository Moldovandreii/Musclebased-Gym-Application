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

	<c:choose>  
	
	 <c:when test="${mode=='TRICEPS_KICKBACKS'}">
		<img src="static/images/tricepskickbacks.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>

	<c:when test="${mode=='SKULLCRUSHER'}">
		<img src="static/images/skullcrusher.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='BARBELLCURLS'}">
		<img src="static/images/barbellcurls.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='BENCHPRESS'}">
		<img src="static/images/benchpress.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='CABLEFLYES'}">
		<img src="static/images/cableflyes.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='DEADLIFT'}">
		<img src="static/images/deadlift.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='DIPS'}">
		<img src="static/images/dips.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='DUMBBELLFLYES'}">
		<img src="static/images/dumbbellflyes.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='HAMMERCURLS'}">
		<img src="static/images/hammercurls.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='LEGRAISES'}">
		<img src="static/images/legraises.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='SQUAT'}">
		<img src="static/images/legsquat.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='MILITARYPRESS'}">
		<img src="static/images/militarypress.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='PULLUPS'}">
		<img src="static/images/pullups.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>
	
	<c:when test="${mode=='ROPEPUSHDOWNS'}">
		<img src="static/images/ropepushdowns.jpg" width=300 height=200 alt="Triceps Image">
	</c:when>



	 
	</c:choose> 

	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>

</html>
	