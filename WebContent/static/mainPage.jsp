<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<!-- Bootstraps CSS and Custom CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href="./css/style.css">
		<title>Script Wars</title>
	</head>
	<body>
		<div id="Top" class="container">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#id-navbar-collapse" aria-expanded="false">
        				<span class="sr-only">Toggle navigation</span>
       					<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
      				</button>
					<a class="navbar-brand" href="#Top">{S}</a>
				</div>
				
				<div class="collapse navbar-collapse" id="id-navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="#Description">About</a></li>
						<li><a href="#Games">Games</a></li>
						<li><a href="#Contributing">Contribute</a></li>
						<li><a href="./doc/index.html">Javadocs</a></li>
					</ul>
				</div>
			</div>
		</nav>
		
		<div class="page-header">
			<h1 id="Top">Script Wars</h1>
		</div>
		
		<h2 id="Description">Description</h2>
		<p>Script Wars is a AI design competition designed 
		for university software students.  <br> Participants 
		write small AI programs using the supplied library 
		and connect to a competition server. The AIs then 
		compete against each other in simple games for glory.</p>
		<hr>
		
		<h2 id="Games">Available Games</h2>
		<div class ="row">
			<jsp:useBean id="staticBean" class="brownshome.scriptwars.site.StaticBean"/>
			<c:forEach items="${staticBean.typeList}" var="gameType">
				<div class="col-md-3 col-sm-6 text-center">
					<a href="games/${gameType.name}" class="thumbnail">
						<img title="${gameType.description}" src="static/games/${gameType.name}/icon.png" alt="${gameType.name}" class="responsiveimg" style="width:192px;height:192px;">
						<h3 class="caption">${gameType.name}</h3>
					</a>
				</div>
			</c:forEach>
		</div>
		<hr>
			
		<jsp:include page="/static/howToCompete.html"/>	
		<hr>
		
		<h2 id="Contributing">How to Contribute</h2>
		
		<p>This project is in the early stages of it's development and you are encouraged to take an active
		role in it's development. The Github page for the site can be found 
		<a href="https://github.com/Brownshome/script-wars">here</a> along with more information about how to
		contribute to the project. But to sum up the information, the project needs help writing the css pages
		for the site and creating games other than "Tank Game". Any other changes to the project to benefit
		ease of use and / or the user experience are also welcome.</p>
		<p>Also feel free to document any improvements or feedback <a href="https://github.com/Brownshome/script-wars/issues">here</a>.</p>
		</div>
		
		<footer>
			<div class="container">
				<p class="text-muted">Copyright &copy; James Brown</p>
			</div>
		</footer>
		
		<!-- Put the Javascript at the end to speed loading -->
		<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	</body>
</html>