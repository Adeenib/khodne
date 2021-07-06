<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords"
	content="Strategic Planning, 987-654-321&nbsp;or
456-789-321, Taxi transfers from and to&nbsp; Airport, Yellow Cab NYC, Book your trip online now, INTUITIVE">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>Home</title>
<link rel="stylesheet" href="/css/nicepageHome.css" media="screen">
<link rel="stylesheet" href="/css/Home.css" media="screen">

<script class="u-script" type="text/javascript" src="/js/jqueryHome.js"
	defer=""></script>
<script class="u-script" type="text/javascript"
	src="/js/nicepageHome.js" defer=""></script>
<meta name="generator" content="Nicepage 3.19.1, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i|Lato:100,100i,300,300i,400,400i,700,700i,900,900i|Oswald:200,300,400,500,600,700|Abel:400">

<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "/images/small-6948-60df4ba05ca26.png"
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="Home">
<meta property="og:type" content="website">
</head>
<body class="u-body">
	<header class="u-clearfix u-custom-color-1 u-header u-header"
		id="sec-457f">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="/"
				class="u-align-left u-image u-logo u-image-1" data-image-width="150"
				data-image-height="71"> <img
				src="/images/small-6948-60df4ba05ca26.png"
				class="u-logo-image u-logo-image-1" data-image-width="101.647">
			</a>
			<nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
				<div class="menu-collapse"
					style="font-size: 1rem; letter-spacing: 0px;">
					<a
						class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
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
				<h2>Welcome <c:out value="${currentUser.id}"/></h2>
					<ul class="u-nav u-unstyled u-nav-1">
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="Home.html" style="padding: 10px 48px;">Home</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="rider/${currentUser.id}" style="padding: 10px 48px;">My Page</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="/registration"  style="padding: 10px 48px;">Join
								us!</a></li>
					</ul>
				</div>
				
			</nav>
		</div>
	</header>
	<form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Logout!" />
    </form>
	<section class="u-clearfix u-image u-section-1" id="carousel_ecec"
		data-image-width="1980" data-image-height="1320">
		<div class="u-clearfix u-layout-wrap u-layout-wrap-1">
			<div class="u-layout">
				<div class="u-layout-row">
					<div
						class="u-align-left u-container-style u-layout-cell u-left-cell u-size-26-lg u-size-28-xl u-size-29-md u-size-29-sm u-size-29-xs u-layout-cell-1">
						<div
							class="u-container-layout u-valign-middle u-container-layout-1">
							<h5
								class="u-custom-font u-font-pt-sans u-text u-text-palette-5-dark-2 u-text-1">CALL
								US ANYTIME AT:</h5>
							<h1
								class="u-custom-font u-font-lato u-text u-text-palette-5-dark-2 u-text-2">
								059-123-4567&nbsp;<span style="font-size: 2.25rem;">or </span> <br>056-123-4567<br>
							</h1>
							<a href="https://nicepage.com/k/aesthetic-website-templates"
								class="u-active-palette-5-dark-2 u-btn u-btn-rectangle u-button-style u-custom-font u-font-oswald u-hover-palette-5-dark-2 u-palette-5-dark-3 u-radius-0 u-text-active-white u-text-hover-white u-text-palette-5-light-2 u-btn-1">Call
								Now</a>
						</div>
					</div>
					<div
						class="u-container-style u-image u-layout-cell u-right-cell u-shape-rectangle u-size-31-md u-size-31-sm u-size-31-xs u-size-32-xl u-size-34-lg u-image-1"
						data-image-width="1200" data-image-height="1167">
						<div class="u-container-layout u-container-layout-2"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="u-clearfix u-section-2" id="carousel_98be">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div class="u-palette-3-base u-shape u-shape-rectangle u-shape-1"></div>
			<img class="u-image u-image-1" src="/images/2972914016-0.jpeg"
				data-image-width="150" data-image-height="100">
			<div
				class="u-align-left u-container-style u-grey-5 u-group u-group-1">
				<div class="u-container-layout u-valign-middle u-container-layout-1">
					<h2 class="u-text u-text-1">Book your trip online now</h2>
					<p class="u-text u-text-2">
						Now you can enjoy&nbsp; your trip without any worry about arriving
						on time. you can book for a trip so you won't lose any time.<br>
						<br>
					</p>
					<a href="https://nicepage.com/"
						class="u-active-black u-btn u-button-style u-hover-black u-palette-3-base u-btn-1">Book
						now</a>
				</div>
			</div>
			<div class="u-clearfix u-gutter-0 u-layout-wrap u-layout-wrap-1">
				<div class="u-gutter-0 u-layout">
					<div class="u-layout-row">
						<div
							class="u-align-left u-container-style u-layout-cell u-palette-3-base u-size-30 u-layout-cell-1">
							<div
								class="u-container-layout u-valign-middle u-container-layout-2">
								<h3 class="u-text u-text-3">About Us</h3>
								<p class="u-text u-text-4">We are a start up company
									established to connect passengers ans car owners.</p>
							</div>
						</div>
						<div
							class="u-container-style u-image u-layout-cell u-size-30 u-image-2"
							data-image-width="626" data-image-height="417">
							<div
								class="u-container-layout u-valign-middle u-container-layout-3"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="u-align-center u-clearfix u-image u-section-3"
		id="carousel_66c3" data-image-width="150" data-image-height="99">
		<div class="u-clearfix u-sheet u-valign-top u-sheet-1">
			<div
				class="u-align-center u-container-style u-group u-white u-group-1">
				<div class="u-container-layout u-container-layout-1">
					<img class="u-image u-image-1"
						src="/images/ae68e8ced52159a82ff07b73d8d07f0e11d179cbdf4c10784b664152809bd627edd2b4341679dd1c48885e70602de66f5634b54460e9d07c41f4ec_1280.jpg"
						data-image-width="1280" data-image-height="850">
					<h6 class="u-custom-font u-text u-text-1">
						Administration <br> <span style="font-weight: 700;">056-123-4567&nbsp;</span>
						<br> <br>Lost and Found <br> <span
							style="font-weight: 700;">056-123-4568</span>
					</h6>
				</div>
			</div>
		</div>
	</section>
	<section class="u-clearfix u-palette-3-base u-section-4"
		id="carousel_9022">
		<div
			class="u-clearfix u-sheet u-valign-middle-sm u-valign-middle-xs u-sheet-1">
			<div
				class="u-clearfix u-expanded-width u-gutter-16 u-layout-wrap u-layout-wrap-1">
				<div class="u-layout">
					<div class="u-layout-row">
						<div
							class="u-container-style u-layout-cell u-left-cell u-size-30 u-layout-cell-1">
							<div class="u-container-layout u-valign-top u-container-layout-1">
								<h3 class="u-text u-text-1">Get in touch</h3>
								<h6 class="u-custom-font u-text u-text-font u-text-2">We
									can ensure reliability, low cost fares and most important, with
									safety and comfort in mind.</h6>
								<div class="u-social-icons u-spacing-10 u-social-icons-1">
									<a class="u-social-url" target="_blank" href=""><span
										class="u-icon u-icon-circle u-social-facebook u-social-icon u-icon-1"><svg
												class="u-svg-link" preserveAspectRatio="xMidYMin slice"
												viewBox="0 0 112 112" style="">
												<use xmlns:xlink="http://www.w3.org/1999/xlink"
													xlink:href="#svg-7b69"></use></svg>
											<svg x="0px" y="0px" viewBox="0 0 112 112" id="svg-7b69"
												class="u-svg-content">
												<path
													d="M56.1,0C25.1,0,0,25.1,0,56.1c0,31,25.1,56.1,56.1,56.1c31,0,56.1-25.1,56.1-56.1C112.2,25.1,87.1,0,56.1,0z M71.6,34.3h-8.2c-1.3,0-3.2,0.7-3.2,3.5v7.6h11.3l-1.3,12.9h-10V95H45V58.3h-7.2V45.4H45v-8.3c0-6,2.8-15.3,15.3-15.3l11.2,0V34.3z "></path></svg></span>
									</a> <a class="u-social-url" target="_blank" href=""><span
										class="u-icon u-icon-circle u-social-icon u-social-twitter u-icon-2"><svg
												class="u-svg-link" preserveAspectRatio="xMidYMin slice"
												viewBox="0 0 112 112" style="">
												<use xmlns:xlink="http://www.w3.org/1999/xlink"
													xlink:href="#svg-4577"></use></svg>
											<svg x="0px" y="0px" viewBox="0 0 112 112" id="svg-4577"
												class="u-svg-content">
												<path
													d="M56.1,0C25.1,0,0,25.1,0,56.1s25.1,56.1,56.1,56.1s56.1-25.1,56.1-56.1S87.1,0,56.1,0z M83.8,47.3 c0,0.6,0,1.2,0,1.7c0,17.7-13.5,38.2-38.2,38.2c-7.6,0-14.6-2.2-20.6-6c1,0.1,2.1,0.2,3.2,0.2c6.3,0,12.1-2.1,16.7-5.7 c-5.9-0.1-10.8-4-12.5-9.3c0.8,0.2,1.7,0.2,2.5,0.2c1.2,0,2.4-0.2,3.5-0.5c-6.1-1.2-10.8-6.7-10.8-13.1c0-0.1,0-0.1,0-0.2 c1.8,1,3.9,1.6,6.1,1.7c-3.6-2.4-6-6.5-6-11.2c0-2.5,0.7-4.8,1.8-6.7c6.6,8.1,16.5,13.5,27.6,14c-0.2-1-0.3-2-0.3-3.1 c0-7.4,6-13.4,13.4-13.4c3.9,0,7.3,1.6,9.8,4.2c3.1-0.6,5.9-1.7,8.5-3.3c-1,3.1-3.1,5.8-5.9,7.4c2.7-0.3,5.3-1,7.7-2.1 C88.7,43,86.4,45.4,83.8,47.3z"></path></svg></span>
									</a> <a class="u-social-url" target="_blank" href=""><span
										class="u-icon u-icon-circle u-social-icon u-social-instagram u-icon-3"><svg
												class="u-svg-link" preserveAspectRatio="xMidYMin slice"
												viewBox="0 0 112 112" style="">
												<use xmlns:xlink="http://www.w3.org/1999/xlink"
													xlink:href="#svg-e675"></use></svg>
											<svg x="0px" y="0px" viewBox="0 0 112 112" id="svg-e675"
												class="u-svg-content">
												<path
													d="M56.1,0C25.1,0,0,25.1,0,56.1c0,31,25.1,56.1,56.1,56.1c31,0,56.1-25.1,56.1-56.1C112.2,25.1,87.1,0,56.1,0z M90.6,73.4c0,9.6-7.8,17.5-17.5,17.5H38.6c-9.6,0-17.5-7.9-17.5-17.6V38.8c0-9.6,7.8-17.5,17.5-17.5h34.5c9.6,0,17.5,7.8,17.5,17.5 V73.4z"></path>
												<path
													d="M73.1,28.9H38.6c-5.4,0-9.9,4.4-9.9,9.9v34.5c0,5.4,4.4,9.9,9.9,9.9h34.5c5.4,0,9.9-4.4,9.9-9.9V38.8 C83,33.4,78.6,28.9,73.1,28.9z M55.9,74C46,74,38,66,38,56.1c0-9.9,8-17.9,17.9-17.9c9.9,0,17.9,8,17.9,17.9 C73.8,66,65.8,74,55.9,74z M74.3,41.9c-2.3,0-4.2-1.9-4.2-4.2s1.9-4.2,4.2-4.2c2.3,0,4.2,1.9,4.2,4.2S76.6,41.9,74.3,41.9z"></path>
												<path
													d="M55.9,45.8c-5.7,0-10.4,4.6-10.3,10.3c0,5.7,4.6,10.3,10.3,10.3s10.3-4.6,10.3-10.3 C66.2,50.4,61.6,45.8,55.9,45.8z"></path></svg></span>
									</a> <a class="u-social-url" target="_blank" href="#"><span
										class="u-icon u-icon-circle u-social-icon u-social-vk u-icon-4"><svg
												class="u-svg-link" preserveAspectRatio="xMidYMin slice"
												viewBox="0 0 112 112" style="">
												<use xmlns:xlink="http://www.w3.org/1999/xlink"
													xlink:href="#svg-b519"></use></svg>
											<svg x="0px" y="0px" viewBox="0 0 112 112" id="svg-b519"
												class="u-svg-content">
												<path
													d="M56.1,0C25.1,0,0,25.1,0,56.1c0,31,25.1,56.1,56.1,56.1c31,0,56.1-25.1,56.1-56.1C112.2,25.1,87.1,0,56.1,0z M88.2,80.7l-9.8,0.1c0,0-2.1,0.4-4.9-1.5c-3.7-2.5-7.2-9.1-9.9-8.2C60.9,72,61,77.9,61,77.9s0,1.3-0.6,1.9c-0.7,0.7-2,0.9-2,0.9H54 c0,0-9.7,0.6-18.3-8.3c-9.3-9.7-17.6-29-17.6-29s-0.5-1.3,0-1.9c0.6-0.7,2.2-0.7,2.2-0.7l10.5-0.1c0,0,1,0.2,1.7,0.7 c0.6,0.4,0.9,1.2,0.9,1.2s1.7,4.3,4,8.2c4.4,7.6,6.4,9.3,7.9,8.4c2.2-1.2,1.5-10.7,1.5-10.7s0-3.5-1.1-5c-0.9-1.2-2.5-1.5-3.3-1.6 c-0.6-0.1,0.4-1.5,1.6-2.1c1.9-0.9,5.2-1,9.2-0.9c3.1,0,4,0.2,5.2,0.5c3.6,0.9,2.4,4.3,2.4,12.4c0,2.6-0.5,6.3,1.4,7.5 c0.8,0.5,2.8,0.1,7.7-8.3c2.3-4,4.1-8.6,4.1-8.6s0.4-0.8,1-1.2c0.6-0.4,1.4-0.3,1.4-0.3l11.1-0.1c0,0,3.3-0.4,3.9,1.1 c0.6,1.6-1.2,5.3-5.8,11.3c-7.4,9.9-8.3,9-2.1,14.7c5.9,5.5,7.1,8.1,7.3,8.5C93.4,80.4,88.2,80.7,88.2,80.7z"></path></svg></span>
									</a> <a class="u-social-url" target="_blank" href="#"><span
										class="u-icon u-icon-circle u-social-icon u-social-youtube u-icon-5"><svg
												class="u-svg-link" preserveAspectRatio="xMidYMin slice"
												viewBox="0 0 112 112" style="">
												<use xmlns:xlink="http://www.w3.org/1999/xlink"
													xlink:href="#svg-547c"></use></svg>
											<svg x="0px" y="0px" viewBox="0 0 112 112" id="svg-547c"
												class="u-svg-content">
												<path
													d="M65.9,55.7l-17.6-8.9c-0.5-0.2-1,0.1-1,0.6v17.3c0,0.5,0.5,0.9,1,0.6L65.9,57C66.4,56.8,66.4,56,65.9,55.7z"></path>
												<path
													d="M56.1,1.1c-30.4,0-55,24.6-55,55c0,30.4,24.6,55,55,55c30.4,0,55-24.6,55-55C111.1,25.7,86.5,1.1,56.1,1.1z M88.3,65.5 c0,7.4-6,13.4-13.4,13.4H37.3c-7.4,0-13.4-6-13.4-13.4V46.7c0-7.4,6-13.4,13.4-13.4h37.6c7.4,0,13.4,6,13.4,13.4V65.5z"></path></svg></span>
									</a>
								</div>
							</div>
						</div>
						<div
							class="u-container-style u-layout-cell u-size-30 u-layout-cell-2">
							<div class="u-container-layout u-container-layout-2">
								<h6 class="u-text u-text-3">call us</h6>
								<p class="u-text u-text-4">
									059-123-4567&nbsp;<br>056-123-4567
								</p>
								<h6 class="u-text u-text-5">location</h6>
								<p class="u-text u-text-6">P.O. Box 2276, Al Jihad Street,
									Ramallah</p>
								<h6 class="u-text u-text-7">Our top services</h6>
								<ul class="u-custom-list u-text u-text-8">
									<li>
										<div class="class u-list-icon">
											<div xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
												xml:space="preserve" class="u-svg-content">✔</div>
										</div>Local transfers
									</li>
									<li>
										<div class="class u-list-icon">
											<div xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
												xml:space="preserve" class="u-svg-content">✔</div>
										</div>Crossings&nbsp; Transfers
									</li>
									<li>
										<div class="class u-list-icon">
											<div xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
												xml:space="preserve" class="u-svg-content">✔</div>
										</div>Excursions and Tours
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer"
		id="sec-2f41">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-small-text u-text u-text-variant u-text-1">Sample
				text. Click to select the text box. Click again or double click to
				start editing the text.</p>
		</div>
	</footer>
	<section class="u-backlink u-clearfix u-grey-80">
		<a class="u-link" href="https://nicepage.com/website-templates"
			target="_blank"> <span>Website Templates</span>
		</a>
		<p class="u-text">
			<span>created with</span>
		</p>
		<a class="u-link" href="https://nicepage.com/" target="_blank"> <span>Website
				Builder Software</span>
		</a>.
	</section>
</body>
</html>