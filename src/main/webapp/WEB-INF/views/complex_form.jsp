
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Complex JSP Form</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body class="" style="background-color: #e2e2e2;">

	<div class="container mt-5">
		<h3 class="text-center">Complex Form</h3>
		<div class="alert alert-danger" role="alert">
		
		<form:errors path="employee.*"/>
		
		</div>
		<div class="border p-5">
			<form action="handle" method="post">
				<div class="row">
					<div class="col-md-6">

						<div class="form-group">
							<label for="name">Name:</label> <input type="text" id="name"
								name="name" class="form-control" required>
						</div>

						<div class="form-group">
							<label for="email">Email:</label> <input type="text" id="email"
								name="email" class="form-control" required>
						</div>

						<div class="form-group">
							<label for="dob">Date of Birth:</label> <input type="text"
								id="dob" name="dob" placeholder="dd/mm/yyyy"
								class="form-control" required>
						</div>

					</div>

					<div class="col-md-6">

						<div class="form-group">
							<label for="gender">Gender:</label><br>
							<div class="form-check form-check-inline">
								<input type="radio" id="male" name="gender" value="male"
									class="form-check-input" required> <label for="male"
									class="form-check-label">Male</label>
							</div>

							<div class="form-check form-check-inline">
								<input type="radio" id="female" name="gender" value="female"
									class="form-check-input" required> <label for="female"
									class="form-check-label">Female</label>
							</div>

							<div class="form-check form-check-inline">
								<input type="radio" id="other" name="gender" value="other"
									class="form-check-input" required> <label for="other"
									class="form-check-label">Other</label>
							</div>

						</div>

						<div class="form-group">
							<label for="country">Country:</label> <select id="country"
								name="country" class="form-control" required>
								<option value="select">Select</option>
								<option value="India">India</option>
								<option value="USA">United States</option>
								<option value="Canada">Canada</option>
								<option value="UK">United Kingdom</option>
								<option value="Germany">Germany</option>
							</select>
						</div>

						<div class="form-group">
							<label for="interests">Interests:</label><br>
							<div class="form-check form-check-inline">
								<input type="checkbox" id="music" name="interests" value="music"
									class="form-check-input"> <label for="music"
									class="form-check-label">Music</label>
							</div>

							<div class="form-check form-check-inline">
								<input type="checkbox" id="sports" name="interests"
									value="sports" class="form-check-input"> <label
									for="sports" class="form-check-label">Sports</label>
							</div>
							<div class="form-check form-check-inline">
								<input type="checkbox" id="books" name="interests" value="books"
									class="form-check-input"> <label for="books"
									class="form-check-label">Books</label>
							</div>

						</div>

						<div class="form-group">
							<label for="message">Message:</label><br>
							<textarea id="message" name="message" rows="4" cols="50"
								class="form-control"></textarea>
						</div>

					</div>
				</div>

				<div class="container">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>

			</form>
		</div>
	</div>

	<!-- Bootstrap JS and jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
