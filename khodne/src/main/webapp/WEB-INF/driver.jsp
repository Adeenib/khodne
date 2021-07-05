<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/driver.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
  $("#flip").click(function(){
    $("#panel").slideToggle("slow");
  });
});
</script>
</head>
<body>
<div class = "main" style = "background-image: url(images/car2.jpg) ;">
 <h1>Welcome to Khodni WebSite!</h1>
 <div id="flip">Notifications</div>
<div id="panel"><a href="">you have a ride</a></div>

<h2>On Service </h2> <label class="switch">
  <input type="checkbox" checked>
  <span class="slider round"></span>
</label>
<table>
			<thead>
				<tr>
					<td>Customer Name </td>
					<td>Pick up Location </td>
					<td>Drop off Location</td>
					<td>Mobile Number </td>
					<td>Status </td>
				</tr>
			</thead>
			<tbody>

				
					<tr>
						<td>Ninja</td>
						<td>Manara Rounda</td>
						<td>Irsal St</td>
						<td>059123456</td>
						<td>On The Way</td>
					</tr>
					
					
				
			</tbody>
		</table>
 
 
 
 
</div>
</body>
</html>