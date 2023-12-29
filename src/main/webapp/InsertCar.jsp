<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>

<!--  <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />

</head>
<body>
	<!--  <script>
		function validate() {
			var name = "^[A-Z a-z]+$";
			var location = "^[A-Z a-z]";
			var pass = "[0-9]+$";
			var email = "/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/"

			var id = document.getElementById("cust_id").value;
			var name = document.getElementById("cust_name").value;
			var email = document.getElementById("cust_email").value;
			var number = document.getElementById("cust_no").value;
			var loc = document.getElementById("cust_loc").value;
	<%--   Id validation--%>
		if (id == null || id == "") {
				alert("Id cannot be blank");
				return false;

			} else if (!id.match(pass)) {
				alert("Enter valid id");
				return false;

			}
	<%--   name validation--%>
		if (name == null || name == "") {
				alert("Name cannot be blank");
				return false;

			} else if (!name.match(name)) {
				alert("Enter valid Name");
				return false;

			}
	<%--   Email validation--%>
		if (email == null || email == "") {
				alert("Email cannot be blank");
				return false;

			} else if (!email.match(email)) {
				alert("Enter valid Email");
				return false;

			}
	<%--   Number validation--%>
		if (number == null || number == "") {
				alert(" Number cannot be blank");
				return false;

			} else if (!number.match(pass)) {
				alert("Enter valid Number");
				return false;

			}
	<%--   Location validation--%>
		if (loc == null || loc == "") {
				alert(" Location cannot be blank");
				return false;

			} else if (!loc.match(location)) {
				alert("Enter valid Location");
				return false;

			}

		}
	</script>-->

	<div class="container-fluid">
		<br>
		<h1><b>Carz.com</b></h1>
		<div class="card">
			<div class="card-body">
				<form action="CarController" method="post">

					<div class="form-group row">
						<label for="CarNo" class="col-sm-4 col-form-label">Car No
						</label>
						<div class="col-sm-6">

							<input type="text" class="form-control" name="carNo"
								id="carNo" placeholder="Enter Car No ">

						</div>

					</div>
					<br>

					<div class="form-group row">
						<label for="Manufacturer" class="col-sm-4 col-form-label">Manufacturer
							</label>
						<div class="col-sm-6">

							<input type="text" class="form-control" name="manufacturer"
								id="manufacturer" placeholder="Enter manufacturer name">

						</div>

					</div>
					<br>

					<div class=" form-group row">
						<label for="Model" class="col-sm-4 col-form-label">Model
							</label>
						<div class="col-sm-6">

							<input type="text" class="form-control" name="model"
								id="model" placeholder="Enter Model">

						</div>
					</div>
					<br>

					<div class="form-group row">
						<label for="KmsRan" class="col-sm-4 col-form-label">KmsRan
							</label>
						<div class="col-sm-6">

							<input type="text" class="form-control" name="kmsRan"
								id="kmsRan" placeholder="Enter KmsRan">

						</div>
					</div>
					<br>

					<div class="form-group row">
						<label for="PriceExpected" class="col-sm-4 col-form-label">PriceExpected
							</label>
						<div class="col-sm-6">

							<input type="text" class="form-control" name="priceExpected"
								id="priceExpected" placeholder="Enter PriceExpected">
						</div>

					</div><br>
					
					<div class="form-group row">
						<label for="noOfOwners" class="col-sm-4 col-form-label">No of Owners
							</label>
						<div class="col-sm-6">

							<input type="text" class="form-control" name="noOfOwners"
								id="noOfOwners" placeholder="Enter No Of Owners">
						</div>

					</div>
					<br> <input class="btn btn-primary" type="submit"
						value="Register" name="car_button"  />
				</form>
			</div>

		</div>

	</div>


</body>
</html>