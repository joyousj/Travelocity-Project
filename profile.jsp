<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/style.css" />" rel="stylesheet">
<title>Profile</title>
</head>
<body>
	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">
					<!-- class="logo_colour", allows you to change the colour of the text -->
					<h1>
						<a href="/webapp">Travelocity for<span class="logo_colour">Meeting Spaces</span></a>
					</h1>
					<h2>Reserve Your Event Space Here.</h2>
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
					<div class="sidebar_item">
						<!-- insert your sidebar items here -->
						</div>
					<div class="sidebar_base"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
						
					</div>
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
				<p>Edit your profile below.</p>
				<form action="/webapp/editProfile" method="POST">
					<table>
						<tr>
							<td>First Name:</td>
							<td><input type="text" name="first_name"  value="${user.first_name}"><br></td>
						</tr>
						<tr>
							<td>Last Name:</td>
							<td><input type="text" name="last_name" value="${user.last_name}"><br></td>
						</tr>
						<tr>
							<td>Company Name:</td>
							<td><input type="text" name="company" value="${user.company}"><br></td>
						</tr>
						<tr>
							<td>Phone Number:</td>
							<td><input type="number" name="phone" value="${user.phone}"><br></td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><input type="email" name="email" value="${user.email}"><br></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type="password" name="password" value="${user.password}"><br></td>
						</tr>
						<tr>
							<td>
								
								<input type="submit" value="Update" /> 
							</td>
						</tr>
					</table>
				</form>
				<p>Joined ${user.joined}</p>
				<!-- 
				<h1></h1>
				<c:if test="${!empty user}">
					<table>
						<tr>
							<td>First Name</td>
							<td>Last Name</td>
							<td>Company</td>
							<td>Phone</td>
							<td>Email</td>
							<td>Joined</td>
						</tr>
						<tr>
							<td>${user.first_name}</td>
							<td>${user.last_name}</td>
							<td>${user.company}</td>
							<td>${user.phone}</td>
							<td>${user.email}</td>
							<td>${user.joined}</td>
						</tr>
					</table>
					<form action="/webapp/editProfile" method="GET">
						<p><input type="submit" value="Edit" /></p>
					</form>
				</c:if>
				-->
			</div>
		</div>
		<div id="content_footer"></div>
		<div id="footer">
			<p>
				<a href="/webapp/">Home</a> 
				| <a href="/webapp/register">Register</a>
				| <a href="/webapp/profile">Profile</a> 
				| <a href="/webapp/search">Search</a>
				| <a href="/webapp/">Logout</a>
			</p>
			<p>
				Copyright &copy; Joy Singharath &amp; David Osipov 
				
			</p>
		</div>
		<p>&nbsp;</p>
	</div>
</body>
</html>
