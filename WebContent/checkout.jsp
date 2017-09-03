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
<title>Thanks for donating</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/checkout.css">
<link rel="stylesheet" href="css/enhanced-modals.min.css">
<script src="js/jquery.min.js" type="text/javascript"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script src="js/font-awesome.js"></script>
<script src="js/enhanced-modals.min.js"></script>
<script src="js/checkout.js"></script>
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
</head>
<body>
	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog" role="document">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Success!</h4>
				</div>
				<div class="modal-body">
					<p>Your donation request has been successfully registered.</p>
					<p>Thank you for spreading the kindness with a generous act.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					<a type="button" class="btn btn-success" href="homepage.html#services">Donate Other</a>
				</div>
			</div>

		</div>
	</div>
	<div class="container">
		<div class="form-wrapper cf">
			<div class="five col">
				<div class="title">
					<h2>Thanks for Donating</h2>
					<img src="images/<%= request.getParameter("item") %>.svg">
					<p class="item">
						<%= request.getParameter("item") %>
					</p>
					<p class="price"></p>
				</div>
			</div>
			<div class="seven col">
				<form class="form">
					<input type="text" name="name" required="required" id="name" placeholder="Name">
				    <input type="text" pattern="\d*" maxlength="10" name="phone_number" required="required"
						id="phone_number" placeholder="Phone Number">
					<input type="number" min=0 name="quantity" required="required" id="quantity" placeholder="Quantity">
					<textarea name="address" id="address" required="required" rows="4" cols="50" placeholder="Address"></textarea>
					<div class="submit-wrapper">
						<input class="submit" type="submit" value="Donate">
						<!-- Trigger the modal with a button -->
					    <!--<button id="donate" type="submit" class="submit" data-toggle="modal" data-target="#myModal">Donate</button> -->
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>