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
				<form>
					<table>
						<tr>
							<td>Search by:</td>
							<td><input type="radio" name="sort" value="price" />Price</td>
							<td><input type="radio" name="sort" value="location" checked />Location</td>
							<td><input type="radio" name="sort" value="both" />Both</td>
							<td><input type="submit" value="Next"></td>
						</tr>
					</table>
				</form>
				<%
				String sort = request.getParameter("sort");
				if(sort != null && (sort.equals("location"))) { 
				%>
				<form action="/webapp/results" method="POST">
				<table>
					<tr>
							<td>Location</td>
							<td><select name="location">
							<option value="St. Louis">St.Louis</option>
							<option value="Chicago" selected>Chicago</option>
							<option value="Dallas">Dallas</option>
							<option value="Memphis">Memphis</option>
							<option value="Nashville">Nashville</option>
							<option value="New Orleans">New Orleans</option>
							<option value="New York">New York</option>
							<option value="Miami">Miami</option>
							<option value="Cleveland">Cleveland</option>
							<option value="Los Angeles">Los Angeles</option>
							</select></td>
						</tr>
						<tr>
							<td><input type="submit" name="Search"></td>
						</tr>
					</table>
					</form>
				<% } if(sort != null && (sort.equals("price"))) { %>
					<form action="/webapp/results" method="POST">
					<table>
						<tr>
							<td>Price</td>
							<td><select name="range">
							<option value="100" selected>100-149</option>
							<option value="150">150-199</option>
							<option value="200">200-249</option>
							<option value="250">250-299</option>
							<option value="300">300+</option>
							</select></td>
						</tr>
						<tr>
							<td><input type="submit" name="Search"></td>
						</tr>
					</table>
					</form>
				<% } if(sort != null && sort.equals("both")) { %>
				<form action="/webapp/results" method="POST">
				<table>
					<tr>
							<td>Location</td>
							<td><select name="location">
							<option value="St. Louis" selected>St.Louis</option>
							<option value="Chicago">Chicago</option>
							<option value="Dallas">Dallas</option>
							<option value="Memphis">Memphis</option>
							<option value="Nashville">Nashville</option>
							<option value="New Orleans">New Orleans</option>
							<option value="New York">New York</option>
							<option value="Miami">Miami</option>
							<option value="Cleveland">Cleveland</option>
							<option value="Los Angeles">Los Angeles</option>
							</select></td>
						</tr>
						<tr>
							<td>Price</td>
							<td><select name="range">
							<option value="100" selected>100-149</option>
							<option value="150">150-199</option>
							<option value="200">200-249</option>
							<option value="250">250-299</option>
							<option value="300">300+</option>
							</select></td>
						</tr>
						<tr>
							<td><input type="submit" name="Search"></td>
						</tr>
					</table>
					</form>
				<% } %>
			</div>
		</div>
		<div id="content_footer"></div>
		<div id="footer">
			<p>
				<a href="/webapp/">Home</a> 
				| <a href="/webapp/register">Register</a>
				| <a href="/webapp/profile">Profile</a> 
				| <a href="/webapp/search">Search</a>
				| <a href="/webapp/results">Meeting Space</a>
			</p>
			<p>
				Copyright &copy; Joy Singharath &amp; David Osipov
				
			</p>
		</div>
		<p>&nbsp;</p>
	</div>
</body>
</html>
