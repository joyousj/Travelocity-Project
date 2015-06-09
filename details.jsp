<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/style.css" />" rel="stylesheet">
<title>Details</title>
</head>
<body>
	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">
					<!-- class="logo_colour", allows you to change the colour of the text -->
					<h1>
						<a href="/webapp/">Travelocity<span class="logo_colour"></span></a>
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
				<c:if test="${!empty eventSpace}">
					<table>
						<tr>
							<td>Name</td>
							<td>Price</td>
							<td>Location</td>
						</tr>
						<tr>
							<td>${eventSpace.name}</td>
							<td>${eventSpace.price}</td>
							<td>${eventSpace.location}</td>
						</tr>
					</table>
					<table>
						<tr>
							<td>About ${eventSpace.name}:</td>
							<td>About ${eventSpace.description}:</td>
						</tr>
						
						<tr>
							<td>This is the description:</td>
						</tr>
					</table>
				</c:if>
			</div>
		</div>
		<div id="content_footer"></div>
		<div id="footer">
			<p>
				<a href="/webapp/">Home</a> | <a href="/webapp/register">Register</a>
				| <a href="/webapp/profile">Profile</a> 
				| <a href="/webapp/search">Search</a>
				| <a href="/webapp/results">Meeting Space</a>
			</p>
			<p>
				Copyright &copy; simplestyle_6 
				<!-- | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> --> 
				<!-- | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>  -->
				| <a href="http://www.html5webtemplates.co.uk">design from HTML5webtemplates.co.uk</a>
			</p>
		</div>
		<p>&nbsp;</p>
	</div>
</body>
</html>
