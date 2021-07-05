<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords"
	content="Yellow, V​​, Victory at any cost, Delivery by courier, You know, my friends, Information partners, Subscribe">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">

<title>Home</title>
<link rel="stylesheet" href="/css/nicepageAdmin.css" media="screen">
<link rel="stylesheet" href="/css/HomeAdmin.css" media="screen">
<script class="u-script" type="text/javascript" src="/js/jqueryAdmin.js"
	defer=""></script>
<script class="u-script" type="text/javascript"
	src="js/nicepageAdmin.js" defer=""></script>
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
<meta property="og:title" content="Home">
<meta property="og:description" content="">
<meta property="og:type" content="website">
</head>
<body class="u-body u-overlap">
	<header class="u-clearfix u-header u-sticky u-header" id="sec-64be">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="https://nicepage.com" class="u-image u-logo u-image-1"
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
							class="u-active-grey-5 u-border-active-palette-1-base u-border-hover-palette-1-light-1 u-border-no-left u-border-no-right u-border-no-top u-button-style u-hover-grey-10 u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90"
							href="/" style="padding: 10px 20px;">Home</a></li>
						<li class="u-nav-item"><form id="logoutForm" method="POST"
								action="/logout">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input
									class="u-active-grey-5 u-border-active-palette-1-base u-border-hover-palette-1-light-1 u-border-no-left u-border-no-right u-border-no-top u-button-style u-hover-grey-10 u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90"
									style="padding: 10px 20px;" type="submit" value="Logout!" />
							</form></li>
					</ul>
				</div>
				<div class="u-custom-menu u-nav-container-collapse">
					<div
						class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
						<div class="u-sidenav-overflow">
							<div class="u-menu-close"></div>
							<ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="/" style="padding: 10px 110px;">Home</a></li>
								<li class="u-nav-item"><form id="logoutForm" method="POST"
										action="/logout">
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" /> <input
											class="u-button-style u-nav-link"
											style="padding: 10px 110px;" type="submit" value="Logout!" />
									</form></li>

							</ul>
						</div>
					</div>
					<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
				</div>
			</nav>
		</div>
	</header>
	<section class="u-clearfix u-expanded-width-xl u-image u-section-1"
		id="carousel_d37b" data-image-width="1020" data-image-height="672">
		<div class="u-clearfix u-sheet u-sheet-1">

			<div class="u-form u-form-1">
				<form:errors path="user.*" />
				<form:form modelAttribute="user" action="/driver/new" method="POST">
					<form:hidden path="password" value="password" />
					<h2 class="u-align-left u-text u-text-1">Welcome Admin
						${currentUser.username}</h2>
					<h2 class="u-align-left u-text u-text-1">Add Driver</h2>
					<p></p>
					<div class="driverform">
						<div class="u-form-group u-form-name u-form-partition-factor-2">
							<form:label path="email" class="u-form-control-hidden u-label">Email</form:label>
							<form:input id="theinput" path="email" placeholder="Enter your Email"
								class="u-border-2 u-border-white u-input u-input-rectangle u-palette-3-light-1 u-text-black u-input-1" />
						</div>
						<div class="u-form-group u-form-name u-form-partition-factor-2">
							<form:label path="username" class="u-form-control-hidden u-label">Name</form:label>
							<form:input id="theinput"  path="username" placeholder="Enter your Name"
								class="u-border-2 u-border-white u-input u-input-rectangle u-palette-3-light-1 u-text-black u-input-1" />
						</div>
						<div class="u-form-group u-form-name u-form-partition-factor-2">
							<form:label path="capacity" class="u-form-control-hidden u-label">Capacity</form:label>
							<form:input id="theinput"  path="capacity" placeholder="Enter your Car Capacity"
								class="u-border-2 u-border-white u-input u-input-rectangle u-palette-3-light-1 u-text-black u-input-1" />
						</div>
						<div class="u-form-group u-form-name u-form-partition-factor-2">
							<form:label path="car_type" class="u-form-control-hidden u-label">Car Type</form:label>
							<form:input id="theinput"  path="car_type" placeholder="Enter your Car Type"
								class="u-border-2 u-border-white u-input u-input-rectangle u-palette-3-light-1 u-text-black u-input-1" />
						</div>
							<div class="u-form-group u-form-name u-form-partition-factor-2">
							<form:label path="phone" class="u-form-control-hidden u-label">phone</form:label>
							<form:input id="theinput"  path="phone" placeholder="Enter your phone"
								class="u-border-2 u-border-white u-input u-input-rectangle u-palette-3-light-1 u-text-black u-input-1" />
						</div>
						<div class="u-form-group u-form-name u-form-partition-factor-2">
							<form:label path="location" class="u-form-control-hidden u-label">location</form:label>
							<form:input id="theinput"  path="location" placeholder="Enter your location"
								class="u-border-2 u-border-white u-input u-input-rectangle u-palette-3-light-1 u-text-black u-input-1" />
						</div>
					</div>

					<button id="theinput"  type="submit"
						class="u-active-grey-70 u-border-none u-btn u-btn-submit u-button-style u-hover-palette-1-dark-3 u-palette-3-light-1 u-btn-1">submit</button>





				</form:form>
			</div>
		</div>
	</section>

	</section>
	<section class="u-clearfix u-grey-10 u-section-3" id="carousel_8838">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-text u-text-1">DriveRS</h2>
			<div class="u-expanded-width u-table u-table-responsive u-table-1">
				<table class="u-table-entity">
					<colgroup>
						<col width="11.6%">
						<col width="22.4%">
						<col width="17%">
						<col width="17%">
						<col width="15%">
						<col width="15%">
					</colgroup>
					<thead class="u-align-center u-table-header u-table-header-1">
						<tr style="height: 45px;">
							<th class="u-table-cell">#</th>
							<th class="u-table-cell">Name</th>
							<th class="u-table-cell">Email</th>
							<th class="u-table-cell">Phone</th>
							<th class="u-table-cell">Car Type</th>
							<th class="u-table-cell">Capacity</th>
						</tr>
					</thead>
					<tbody class="u-align-center u-table-body">
					<c:forEach items="${allDriver}" var="Driver">
						<tr style="height: 112px;">
							<td class="u-palette-3-base u-table-cell u-table-cell-7">${Driver.id}</td>
							<td class="u-table-cell">${Driver.username}</td>
							<td class="u-table-cell">${Driver.email}</td>
							<td class="u-table-cell">${Driver.phone}</td>
							<td class="u-table-cell">${Driver.car_type}</td>
							<td class="u-table-cell">${Driver.capacity}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section>
	<style class="u-overlap-style">
.u-overlap:not(.u-sticky-scroll) .u-header {
	background-color: #f5d654 !important
}
</style>


	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer"
		id="sec-28b4">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-small-text u-text u-text-variant u-text-1">Aladdin walked from here</p>
		</div>
	</footer>
</body>
</html>