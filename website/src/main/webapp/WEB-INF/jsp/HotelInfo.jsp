<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jstl/core_rt"%>
<%-- <%@ page isELIgnored="false"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">



<!-- jQuery library -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



<!-- Popper JS -->

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>



<!-- Latest compiled JavaScript -->

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
	 
	 
	text-align: center;
	font-family: inherit;
}
</style>


<script type="text/javascript">
	function onsubmitform() {
		if (document.pressed == "insert") {

			document.myform.action = "index";

		}

		else if (document.pressed == "addstock") {

			document.myform.action = "index";
		}

	}
</script>

<body>

	<div>
		<table>
			<tr>
				<th>Hotel Name</th>
				<th>Address</th>
				<th>Review</th>
				<th>Rooms</th>
				<th>Photos</th>
				<th>Facilities</th>
				<th>Description</th>
				<th>Availability</th>
			</tr>

			<tr>
				<td>${hotel.hotelName}</td>
				<td>landMark : ${hotel.address.landMark} <br> city :
					${hotel.address.city}<br> pincode : ${hotel.address.pincode}<br>
					state: ${hotel.address.state}<br> nation :
					${hotel.address.nation}<br>

				</td>

				<td><jstl:forEach items="${hotel.review}" var="current">
						<br>${current.key}: ${current.value}
						</jstl:forEach></td>

				<td>
					<table>
						<jstl:forEach items="${hotel.rooms}" var="room">
							<td>${room.roomType}</td>
							<td>${room.price}</td>
							<td>${room.bedCount}</td>
							<td>${room.bedType}</td>
							<td>${room.miniBar}</td>


							<td>
								<table>
									<jstl:forEach var="photos" items="${room.photos}">
										<tr style="font-style: italic;">
											<td>${photos}</td>
										</tr>
									</jstl:forEach>
								</table>
							</td>
						</jstl:forEach>
					</table>
				</td>






				<%-- <td>${hotel.photos}</td> --%>

				<td>
						<table>

							<jstl:forEach var="photos" items="${hotel.photos}">
								<tr style="font-style: italic;">
									<td>${photos}</td>
								</tr>
							</jstl:forEach>
						</table>
					</td>

		
				<td>
						<table>

							<jstl:forEach var="facilities" items="${hotel.facilities}">
								<tr style="font-style: italic;">
									<td>${facilities.key}</td>
									<td><jstl:forEach var="facility" items="${facilities.value}">
								<tr style="font-style: italic;">
								<td>${facility}</td>
								</tr>
							</jstl:forEach>
								</tr>
							</jstl:forEach>
						</table>
					</td>
				
				
				<td>${hotel.description}</td>

				<jstl:if test="${hotel.totalAvailableRooms==0}">
					<td>No Rooms Available</td>
				</jstl:if>
				<jstl:if test="${hotel.totalAvailableRooms != 0}">
					<td>Available Rooms :${hotel.totalAvailableRooms}<br> <a
						href="bookingForm">Book Room </a></td>

				</jstl:if>



			</tr>


		</table>
		<form name="myform" onsubmit="return onsubmitform();">
			<button type="submit" name="operation"
				onclick="document.pressed = this.value" value="addstock">Add
				new Stock</button>
			<br /> <br />

		</form>
	</div>

</body>
</html>











<li><a href="#2a" data-toggle="tab">${hotelList.address.city}</a></li>
								<div class="tab-content clearfix">
									<div class="tab-pane" id="2a">
										<h3>
											<p>${hotelList.address.area}</p>
										</h3>
									</div>
								</div>