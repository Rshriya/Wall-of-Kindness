<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Wall of Kindness</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(
				"select * from sample where (username='" + username + "'and password='" + password + "' )");
		if (rs.next()) {
			response.sendRedirect("homepage.html");
		} else {
			out.println("invalid username and password");
		}
		con.close();
		%>
	<div class="container">
		<div class="bg-img"></div>
		<div class="header">
			<div class="loading">
				<div class="block"></div>
				<div class="block"></div>
				<div class="block"></div>
				<div class="block"></div>
			</div>
			<h1>Wall of Kindness</h1>
		</div>
		<div class="main">
			<div class="login">
				<form action="login.jsp">
					<input id="username" name="username" required="required"
						type="text" placeholder="Username" /> <input id="password"
						name="password" required="required" type="password"
						placeholder="Password" />
					<button type="submit" value="Login" />Login</button>
					<span class="form-toggle">Not Registered Yet?</span>
				</form>
			</div>
			<div class="register">
				<form>
					<input id="firstname" name="firstname" required="required" type="text" placeholder="First name" />
						<input id="lastname"
						name="lastname" required="required" type="text"
						placeholder="Last name" /> <input id="email" name="email"
						required="required" type="email" placeholder="email" />
						 <input id="username" name="username" required="required" type="text"
						placeholder="Username" /> <input id="password" name="password"
						required="required" type="password" placeholder="Password" />
					<button type="submit" value="Login" />Register</button>
					<span class="form-toggle">Return to Login</span>
				</form>
			</div>
		</div>
		<div class="footer">
			<ul class="footer-nav">
				<li class="link">FAQ</li>
				<li class="link">About Us</li>
				<li class="link">Contact Us</li>
				<element>
					<li class="link">Privacy Policy</li>
				</element>
			</ul>
			<p class="disclaimer">
				<b>Disclaimer</b> Every effort is made to keep the website up and
				running smoothly. However, we takes no responsibility for, and will
				not be liable for, the website being temporarily unavailable due to
				technical issues beyond our control.
			</p>
		</div>
	</div>
</body>
</html>