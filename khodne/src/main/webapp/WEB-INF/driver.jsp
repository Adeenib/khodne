<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta charset="ISO-8859-1">
<title>${driverr.username}</title>
<link rel="stylesheet" href="/css/driver.css" media="screen">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#flip").click(function() {
			$("#panel").slideToggle("slow");
		});
	});
</script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>join us</title>
<link rel="stylesheet" href="/css/nicepageHeadFoot.css" media="screen">
<link rel="stylesheet" href="join-us.css" media="screen">
<script class="u-script" type="text/javascript" src="/js/jqueryHeadFoot.js"
	defer=""></script>
<script class="u-script" type="text/javascript" src="/js/nicepageHeadFoot.js"
	defer=""></script>
<meta name="generator" content="Nicepage 3.19.1, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

<script type="application/ld+json">{
      "@context": "http://schema.org",
      "@type": "Organization",
      "name": "admin",
      "logo": "/images/small-6948-60df4ba05ca26.png"
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="join us">
<meta property="og:description" content="">
<meta property="og:type" content="website">
</head>


<body class="u-body">
	
	<header
		class="u-clearfix u-header u-palette-3-light-1 u-sticky u-header"
		id="sec-64be">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="/" class="u-image u-logo u-image-1"
				data-image-width="150" data-image-height="71"> <img
				src="/images/small-6948-60df4ba05ca26.png"
				class="u-logo-image u-logo-image-1" data-image-width="105">
			</a>
			<nav class="u-menu u-menu-one-level u-offcanvas u-menu-1"
				data-position="">
				<div class="menu-collapse"
					style="font-size: 1rem; letter-spacing: 0px; font-weight: 500;">
					<a
						class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-borders u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="#"> <svg>
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#menu-hamburger"></use></svg> <svg version="1.1"
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink">
							<defs>
							<symbol id="menu-hamburger" viewBox="0 0 16 16"
								style="width: 16px; height: 16px;">
							<rect y="1" width="16" height="2"></rect>
							<rect y="7" width="16" height="2"></rect>
							<rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
					</a>
				</div>
				<div class="u-custom-menu u-nav-container">
					<ul class="u-nav u-spacing-2 u-unstyled u-nav-1">
						<li class="u-nav-item"><a
							class="u-active-grey-5 u-border-active-palette-1-base u-border-hover-palette-1-light-1 u-button-style u-hover-grey-10 u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90"
							href="Home.html" style="padding: 10px 20px;">Home</a></li>
						<li class="u-nav-item"><a
							class="u-active-grey-5 u-border-active-palette-1-base u-border-hover-palette-1-light-1 u-button-style u-hover-grey-10 u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90"
							href="join-us.html" style="padding: 10px 20px;">join us</a></li>
						<li class="u-nav-item"><a
							class="u-active-grey-5 u-border-active-palette-1-base u-border-hover-palette-1-light-1 u-button-style u-hover-grey-10 u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90"
							style="padding: 10px 20px;">call now</a></li>
					</ul>
				</div>
				<div class="u-custom-menu u-nav-container-collapse">
					<div
						class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
						<div class="u-sidenav-overflow">
							<div class="u-menu-close"></div>
							<ul
								class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="Home.html" style="padding: 10px 20px;">Home</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="join-us.html" style="padding: 10px 20px;">join us</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									style="padding: 10px 20px;">call now</a></li>
							</ul>
						</div>
					</div>
					<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
				</div>
			</nav>
		</div>
	</header>
	<div class="main" style="background-image: url(/images/car2.jpg);">
		<h1>
			Welcome
			<c:out value="${driverr.username}" />
			to Khodni WebSite!
		</h1>
		<form id="logoutForm" method="POST" action="/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" /> <input class="u-button-style u-nav-link"
				style="padding: 10px 110px;" type="submit" value="Logout!" />
		</form>
		<div id="flip">Notifications</div>
		<div id="panel">
			<a href="">you have a ride</a>
		</div>

		<h2>On Service</h2>
		<label class="switch"> <input type="checkbox" checked>
			<span class="slider round"></span>
		</label>
		<table>
			<thead>
				<tr>
					<td>Customer Name</td>
					<td>Pick up Location</td>
					<td>Drop off Location</td>
					<td>Mobile Number</td>
					<td>Status</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="/rider/${riderr.id}"><c:out
								value="${riderr.username}"></c:out> </a></td>
					<c:forEach items="${tripss}" var="t">
						<td><c:out value="${t.pickUpLocation}"></c:out></td>
						<td><c:out value="${t.destination}"></c:out></td>
					</c:forEach>
					<td><c:out value="${riderr.phone}"></c:out></td>
					<td>On The Way</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>