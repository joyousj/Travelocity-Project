<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/style.css" />" rel="stylesheet">
<title>Results</title>
</head>
<body>
	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">
					<!-- class="logo_colour", allows you to change the colour of the text -->
					<h1>
						<a href="/webapp/">Travelocity for<span class="logo_colour">Meeting Spaces</span></a>
					</h1>
					<h2>Reserve Your Event Space Here</h2>
				</div>
			</div>
			<div id="menubar">
				<ul id="menu">
					<!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
					<li><a href="/webapp/">Home</a></li>
					<li><a href="/webapp/register">Register</a></li>
					<li><a href="/webapp/profile">Profile</a></li>
					<li><a href="/webapp/search">Search</a></li>
					<li><a href="/webapp/logout">Logout</a></li>
				</ul>
			</div>
		</div>
		<div id="content_header"></div>
		<div id="site_content">
			<div id="sidebar_container">
				<div class="sidebar">
					<div class="sidebar_top"></div>
					
					<div class="sidebar_base"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_base"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
					</div>
					<div class="sidebar_base"></div>
				</div>
			</div>
			<div id="content">
				<h1></h1>
				<table>
					<tr>
						<td>Name</td>
						<td>Price</td>
						<td>Location</td>
						<td>Description</td>
					</tr>
					<c:if test="${!empty location}">
					<c:forEach items="${location}" var="location">
					<tr>
						<td><a href="/webapp/details/${location.name}">${location.name}</a></td>
						<td>${location.price}</td>
						<td>${location.location}</td>
						<td>${location.description}</td>
					</tr>
					</c:forEach>
					</c:if>
					<c:if test="${!empty range}">
					<c:forEach items="${range}" var="range">
					<tr>
						<td>${range.name}</td>
						<td>${range.price}</td>
						<td>${range.location}</td>
					</tr>
					</c:forEach>
					</c:if>
					<c:if test="${!empty both}">
					<c:forEach items="${both}" var="both">
					<tr>
						<td>${both.name}</td>
						<td>${both.price}</td>
						<td>${both.location}</td>
					</tr>
					</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
		<div id="content_footer"></div>
		<div id="footer">
			<p>
				<a href="/webapp/">Home</a> | <a href="/webapp/register">Register</a>
				| <a href="/webapp/profile">Profile</a> 
				| <a href="/webapp/search">Search</a>
				| <a href="/webapp/results">Logout</a>
			</p>
			<p>
				Copyright &copy; Joy Singharath &amp; David Osipov 
				
			</p>
		</div>
		<p>&nbsp;</p>
	</div>
</body>
</html>
