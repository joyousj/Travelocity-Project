<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/style.css" />" rel="stylesheet">
<title>Travelocity</title>
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
						<h3>Lastest News</h3>
						<h4>New Event Spaces</h4>
						<h5>May 20, 2015</h5>
						<p>2015 see the new event space...&nbsp;<a href="#">read more</a></p>
						</div>
					<div class="sidebar_base"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
					<h3>Useful Links</h3>
					<ul>
					<li><a href="#">Link 1</a></li>
					<li><a href="#">Link 2</a></li>
					</ul>
					</div>
					<div class="sidebar_base"></div>
					
				</div>
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
					<h3>Search</h3>
					<form method="post" action="#" id="search_form">
					<p>
                <input class="search" type="text" name="search_field" value="Enter keywords....." />
                <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="resources/search.png" alt="Search" title="Search" />
              </p>
            </form>
					</div>
					<div class="sidebar_base"></div>
					
				</div>
			</div>
			<div id="content">
				<!-- insert the page content here -->
				<h1></h1>
				<p>All fields are required.</p>
				<form action="/webapp/register.do" method="POST">
					<table>
						<tr>
							<td>First Name:</td>
							<td><input type="text" name="first_name"><br></td>
						</tr>
						<tr>
							<td>Last Name:</td>
							<td><input type="text" name="last_name"><br></td>
						</tr>
						<tr>
							<td>Company Name:</td>
							<td><input type="text" name="company"><br></td>
						</tr>
						<tr>
							<td>Phone Number:</td>
							<td><input type="number" name="phone"><br></td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><input type="email" name="email"><br></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type="password" name="password"><br></td>
						</tr>
						<tr>
							<td>
								
								<input type="submit" name="submit">
							</td>
						<tr>
					</table>
				</form>
			</div>
		</div>
		<div id="content_footer"></div>
		<div id="footer">
			<p>
				<a href="/webapp/">Home</a> 
				| <a href="/webapp/register">Register</a>
				| <a href="/webapp/profile">Profile</a> 
				| <a href="/webapp/search">Search</a>
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
