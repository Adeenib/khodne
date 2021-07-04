
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/register.css">





</head>

<body>
	<h1>Welcome To Khodne</h1>


	<div class="content">
		<div class="container">
			<div class="bacGro"></div>
			<div class="menu">
				<a href="#connexion" class="btn-connexion"><h2>SIGN IN</h2></a> <a
					href="#enregistrer" class="btn-enregistrer active"><h2>SIGN
						UP</h2></a>
			</div>
			<div class="connexion">
				<div class="contact-form">
					<c:if test="${logoutMessage != null}">
						<c:out value="${logoutMessage}"></c:out>
					</c:if>
					
					<c:if test="${errorMessage != null}">
						<c:out value="${errorMessage}"></c:out>
					</c:if>
					<p>
							<form:errors path="user.*" />
						</p>
					<form method="POST" action="/login">
						<p>
							<label for="username">Username</label> <input id="username"
								name="username" />
						</p>
						<p>
							<label for="password">Password</label> <input type="password"
								id="password" name="password" />
						</p>
						<div class="check">
							<label> <input id="check" type="checkbox"
								class="checkbox"> <svg
									xmlns="http://www.w3.org/2000/svg" width="26px" height="23px">
									<path class="path-back"
										d="M1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6" />
									<path class="path-moving"
										d="M24.192,3.813L11.818,16.188L1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6" />
								</svg>
							</label>
							<h3>Keep me signed in</h3>
						</div>

						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> <input type="submit" value="Login!" />
					</form>


				</div>


			</div>

			<div class="enregistrer active-section">
				<form:form method="POST" action="/registration"
					modelAttribute="user">
					<div class="contact-form">
						

						<form:label path="email" />
						Email:
						<form:input type="email" path="email" />

						<form:label path="username" />
						Username:
						<form:input path="username" />

						<form:label path="password" />
						Password:
						<form:password path="password" />

						<form:label path="passwordConfirmation" />
						Password Confirmation:
						<form:password path="passwordConfirmation" />


					</div>
					<input class="register" type="submit" value="Register!" />
				</form:form>
			</div>

		</div>

	</div>

	<script type="text/javascript" src="js/register.js"></script>
</body>

</html>