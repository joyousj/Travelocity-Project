<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="website description" />
<link href="<c:url value="/resources/style.css" />" rel="stylesheet">
<title>Login</title>
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
					<!-- <li><a href="/webapp/search">Search</a></li> -->
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
				<p>Please Login or Register</p>
				<form action="/webapp/login.do" method="POST">
					<table>
						<tr>
							<td>Email:</td>
							<td><input type="email" name="email"><br></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type="password" name="password"></td>
						</tr>
						<tr>
							<td><input type="submit" name="Login"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div id="content_footer"></div>
		<div id="footer">
			<p>
				<a href="/webapp/">Home</a> | <a href="/webapp/register">Register</a>
				| <a href="/webapp/profile">Profile</a> 
				<!-- | <a href="/webapp/search">Search</a> -->
				| <a href="/webapp/logout">Logout</a> 
			</p>
			<p>
				Copyright &copy; Joy Singharath &amp; David Osipov 
				
			</p>
		</div>
		<p>&nbsp;</p>
	</div>
</body>
</html>
