<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 
<%@ taglib prefix="jstl" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">


 
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



 

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>


 

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>



</head>
<style type="text/css">
/* table, th, td {
	padding: 5px;
	height: 80px;
	width: 1100px;
	font-size: 20px;
	text-align: center;
	font-family: inherit;
} */

th, td {
	padding: 1px;
	background-color: silver;
			padding: 1px;
	height: 50px;
	width: 500px;
	font-size: 25px;
	text-align: center;
	font-family: inherit;
}
</style>

<body>

	<div>
		<table class="table table-bordered">
			<tr>
				<th>Hotel Name</th>
				<th>Address</th>
				<th>Review</th>
				<th>Photos</th>
			</tr>


		
			<jstl:forEach var="hotelList" items="${hotelList}">
				<tr>
					<td><a href="/hotel/getHotel?hotelId=${hotelList.hotelId}">${hotelList.hotelName}</a></td>
					<td>${hotelList.address.city}</td>
					<td>
						<table>

							<jstl:forEach var="review" items="${hotelList.review}">
								<tr style="font-style: italic;">
									<td>${review.key}</td>
									<td>${review.value}</td>
								</tr>
							</jstl:forEach>
						</table>
					</td>
						<td>
						<table>

							<jstl:forEach var="photos" items="${hotelList.photos}">
								<tr style="font-style: italic;">
									<td>${photos}</td>
								</tr>
							</jstl:forEach>
						</table>
					</td>
					

				</tr>
			</jstl:forEach>

		</table>

	</div>

</body>
</html> --%>
















<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="jstl" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style type="text/css">
.hotel {
	border: medium;
	background-color: gainsboro	;
	margin: 10px
}


p.resort {
	 width: 4em; 
  border: 2px double salmon;
  color: indigo;
 border-right-style: double;
  word-wrap: break-word;
}
  
</style>
</head>

<!-- <table class="table table-striped w-auto"> -->

<body style="font: 13px Verdana;">
	<div class="container-fluid">
		<div style="width: auto; padding: 10px; position: relative;">
			<jstl:forEach var="hotelList" items="${hotelList}">

				<jstl:forEach var="photos" items="${hotelList.photos}">



					<div class="row hotel">
						<div class="col-sm-4">
							<div class="container">
								<br> <img class="img-responsive" src=${photos }
									alt=${hotelList.hotelName } width="460" height="345">
							</div>

						</div>
						<div class="col-sm-6">
							<div class="container">
							<p class="resort">Resort</p>
								<h1>${hotelList.hotelName}</h1>
 
								<p>${hotelList.address.city}</p>
								<p>Area :${hotelList.address.area}</p>

							</div>
							
							
						</div>


						<div class="col-sm-2"
							;style="width: 70px; height: auto; background: #CC0000; color: #FFF; padding: 7px 1px; text-align: center; top: 4; position: absolute; right: 11;">

							<!--     <div class="col-sm-4" style="background-color:lavenderblush;"> -->
							<h4>INCLUDED IN THIS PRICE</h4>
							<jstl:forEach var="room" items="${hotelList.rooms}">

								
								<h2>${room.price} </h2>
								<p>per night</p>
								<p>LOGIN & UNLOCK A SECRET DEAL!<p>
							</jstl:forEach>

							<!-- </div> -->

						</div>
					</div>


				</jstl:forEach>


			</jstl:forEach>
		</div>
	</div>
</body>

</html>