
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<title>Edit User</title>
<style>
.inner {
	position: relative;
	margin: 0 auto;
	width: 650px;
	display: block;
	padding: 50px 0;
}

h3 {
	text-align: center;
	border-bottom: 2px solid midnightblue;
	margin-bottom: 20px;
}

nav li a {
	font-size: 25px;
	font-weight: 500;
}

a {
	color: #fff;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-light">
			<a class="navbar-brand">Book Store</a>
			<ul class="navbar-nav ml-auto mt-3 mx-5">
				<li class="nav-item"><a class="nav-link active"
					href="index.jsp">Home</a></li>
			</ul>
		</nav>
	</div>
	<div class="inner">
		<div class=" container">
			<div class="row">
				<div class="col-12">
					<h3>Edit User</h3>
					<form action="EditUserServlet" method="post">
						<div class="form-group">
							<label>Book ID</label> <input class="form-control" name="id" type="hidden"
								value="${edit_user.id }">
						</div>
						<div class="form-group">
							<label>Name</label> <input class="form-control"
								name="bkname" value="${edit_user.name }" required>
						</div>
						<div class="form-group">
							<label>Description</label> <input class="form-control"
								name="bkdes" value="${edit_user.email}" required>
						</div>
						<div class="form-group">
							<label>Author Name</label> <input class="form-control"
								name="authname" value="${edit_user.password}" required>
						</div>
						<div class="form-group">

							<label>User Role</label> <select id="inputState"
								class="form-control" name="userRole">
								<option selected disabled>Choose Role</option>
								<option value="admin">Admin</option>
								<option value="consultant">Consultant</option>
								<option value="jobSeeker">Job Seeker</option>
							</select>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
						<button class="btn btn-primary">
							<a href="index.jsp">Cancel</a>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</body>
</html>