<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>Annex - Responsive Bootstrap 4 Admin Dashboard</title>
<meta content="Admin Dashboard" name="description">
<meta content="Mannatthemes" name="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="adminResources/image/favicon.ico">
<link href="adminResources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="adminResources/css/icons.css" rel="stylesheet" type="text/css">
<link href="adminResources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body class="fixed-left">
	<!-- Begin page -->
	<div class="accountbg"></div>
	<div class="wrapper-page">
		<div class="card">
			<div class="card-body">
				<h3 class="text-center mt-0 m-b-15">
					<a href="index.html" class="logo logo-admin"><img
						src="adminResources/images/logo.png" height="24" alt="logo"></a>
				</h3>
				<div class="p-3">
					<form class="form-horizontal" action="index.html">
						
						<div class="form-group row">
							<div class="col-12">
								<input class="form-control" type="text" required=""
									placeholder="Firstname">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-12">
								<input class="form-control" type="text" required=""
									placeholder="Lastname">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-12">
								<input class="form-control" type="email" required=""
									placeholder="Email">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-12">
								<input class="form-control" type="password" required=""
									placeholder="Password">
							</div>
						</div>
						
						<div class="form-group row">
							<div class="col-12">
								<textarea class="form-control" rows="3" cols="44" placeholder="Address"></textarea>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-12">
								<input class="form-control" type="text" required=""
									placeholder="Contact Number">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-12">
								Male<input  type="radio" name="gender" required=""/>
								Female<input  type="radio" name="gender" required=""/>
								
							</div>
						</div>
						<div class="form-group row">
							<div class="col-12">
								<input class="form-control" type="date" placeholder="Date of Birth" required="" />
							</div>
						</div>
						
						<div class="form-group row">
							<div class="col-12">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="customCheck1"> <label
										class="custom-control-label font-weight-normal"
										for="customCheck1">I accept <a href="#"
										class="text-muted">Terms and Conditions</a></label>
								</div>
							</div>
						</div>
						<div class="form-group text-center row m-t-20">
							<div class="col-12">
								<button
									class="btn btn-danger btn-block waves-effect waves-light"
									type="submit">Register</button>
							</div>
						</div>
						<div class="form-group m-t-10 mb-0 row">
							<div class="col-12 m-t-20 text-center">
								<a href="pages-login.html" class="text-muted">Already have
									account?</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery  -->
	<script src="adminResources/js/jquery.min.js"></script>
	<script src="adminResources/js/popper.min.js"></script>
	<script src="adminResources/js/bootstrap.min.js"></script>
	<script src="adminResources/js/modernizr.min.js"></script>
	<script src="adminResources/js/detect.js"></script>
	<script src="adminResources/js/fastclick.js"></script>
	<script src="adminResources/js/jquery.slimscroll.js"></script>
	<script src="adminResources/js/jquery.blockUI.js"></script>
	<script src="adminResources/js/waves.js"></script>
	<script src="adminResources/js/jquery.nicescroll.js"></script>
	<script src="adminResources/js/jquery.scrollTo.min.js"></script>
	<!-- App js -->
	<script src="adminResources/js/app.js"></script>
</body>
</html>