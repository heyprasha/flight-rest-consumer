<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Available flights</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
	<div class="container p-3">
		<h2 class="my-4">Available Flights</h2>
		<div class="table-responsive">
			<table class="table table-hover table-bordered ">
				<tr>
					<th>Flight Number</th>
					<th>Operating Airlines</th>
					<th>Departure City</th>
					<th>Arrival City</th>
					<th>Date Of Departure</th>
					<th>Estimated Departure Time</th>
				</tr>
				<c:forEach items="${flights}" var="flight">
				<tr>
					<td>${flight.flightNumber}</td>
					<td>${flight.operatingAirlines}</td>
					<td>${flight.departureCity}</td>
					<td>${flight.arrivalCity}</td>
					<td>${flight.dateOfDeparture}</td>
					<td>${flight.estimatedDepartureTime}</td>
				</tr>	
				</c:forEach>
			</table>
		</div>
	</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
		
</body>
</html>