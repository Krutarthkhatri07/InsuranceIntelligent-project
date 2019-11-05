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
	<!-- Loader -->
	<div id="preloader">
		<div id="status">
			<div class="spinner"></div>
		</div>
	</div>
	<!-- Begin page -->
	<div id="wrapper">
	
	
		<!--######################################################################## 
			################################### MENU ###############################
			######################################################################## -->
		

						<jsp:include page="menu.jsp"></jsp:include>
		

		<!--########################################################################## -->


		<!-- Left Sidebar End -->
		<!-- Start right Content here -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
			
		<!--######################################################################## 
			################################# HEADER ###############################
			######################################################################## -->				
				
				<jsp:include page="header.jsp"></jsp:include>
				
				
		<!--########################################################################## -->
		
		
		
				<div class="page-content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12">
								<div class="page-title-box">
									<div class="btn-group float-right">
										<ol class="breadcrumb hide-phone p-0 m-0">
											<li class="breadcrumb-item"><a href="#">Annex</a></li>
											<li class="breadcrumb-item"><a href="#">Forms</a></li>
											<li class="breadcrumb-item active">Form Validation</li>
										</ol>
									</div>
									<h4 class="page-title">Form Validation</h4>
								</div>
							</div>
						</div>
						<!-- end page title end breadcrumb -->
						<div class="row">
							<div class="col-lg-6">
								<div class="card m-b-30">
									<div class="card-body">
										<h4 class="mt-0 header-title">Validation type</h4>
										<p class="text-muted m-b-30 font-14">Parsley is a
											javascript form validation library. It helps you provide your
											users with feedback on their form submission before sending
											it to your server.</p>
										<form class="" action="#">
											<div class="form-group">
												<label>Required</label> <input type="text"
													class="form-control" required placeholder="Type something">
											</div>
											<div class="form-group">
												<label>Equal To</label>
												<div>
													<input type="password" id="pass2" class="form-control"
														required placeholder="Password">
												</div>
												<div class="m-t-10">
													<input type="password" class="form-control" required
														data-parsley-equalto="#pass2"
														placeholder="Re-Type Password">
												</div>
											</div>
											<div class="form-group">
												<label>E-Mail</label>
												<div>
													<input type="email" class="form-control" required
														parsley-type="email" placeholder="Enter a valid e-mail">
												</div>
											</div>
											<div class="form-group">
												<label>URL</label>
												<div>
													<input parsley-type="url" type="url" class="form-control"
														required placeholder="URL">
												</div>
											</div>
											<div class="form-group">
												<label>Digits</label>
												<div>
													<input data-parsley-type="digits" type="text"
														class="form-control" required
														placeholder="Enter only digits">
												</div>
											</div>
											<div class="form-group">
												<label>Number</label>
												<div>
													<input data-parsley-type="number" type="text"
														class="form-control" required
														placeholder="Enter only numbers">
												</div>
											</div>
											<div class="form-group">
												<label>Alphanumeric</label>
												<div>
													<input data-parsley-type="alphanum" type="text"
														class="form-control" required
														placeholder="Enter alphanumeric value">
												</div>
											</div>
											<div class="form-group">
												<label>Textarea</label>
												<div>
													<textarea required class="form-control" rows="5"></textarea>
												</div>
											</div>
											<div class="form-group">
												<div>
													<button type="submit"
														class="btn btn-primary waves-effect waves-light">Submit</button>
													<button type="reset"
														class="btn btn-secondary waves-effect m-l-5">Cancel</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<!-- end col -->
							<div class="col-lg-6">
								<div class="card m-b-30">
									<div class="card-body">
										<h4 class="mt-0 header-title">Range validation</h4>
										<p class="text-muted m-b-30 font-14">Parsley is a
											javascript form validation library. It helps you provide your
											users with feedback on their form submission before sending
											it to your server.</p>
										<form action="#">
											<div class="form-group">
												<label>Min Length</label>
												<div>
													<input type="text" class="form-control" required
														data-parsley-minlength="6" placeholder="Min 6 chars.">
												</div>
											</div>
											<div class="form-group">
												<label>Max Length</label>
												<div>
													<input type="text" class="form-control" required
														data-parsley-maxlength="6" placeholder="Max 6 chars.">
												</div>
											</div>
											<div class="form-group">
												<label>Range Length</label>
												<div>
													<input type="text" class="form-control" required
														data-parsley-length="[5,10]"
														placeholder="Text between 5 - 10 chars length">
												</div>
											</div>
											<div class="form-group">
												<label>Min Value</label>
												<div>
													<input type="text" class="form-control" required
														data-parsley-min="6" placeholder="Min value is 6">
												</div>
											</div>
											<div class="form-group">
												<label>Max Value</label>
												<div>
													<input type="text" class="form-control" required
														data-parsley-max="6" placeholder="Max value is 6">
												</div>
											</div>
											<div class="form-group">
												<label>Range Value</label>
												<div>
													<input class="form-control" required type="text range"
														min="6" max="100" placeholder="Number between 6 - 100">
												</div>
											</div>
											<div class="form-group">
												<label>Regular Exp</label>
												<div>
													<input type="text" class="form-control" required
														data-parsley-pattern="#[A-Fa-f0-9]{6}"
														placeholder="Hex. Color">
												</div>
											</div>
											<div class="form-group">
												<label>Min check</label>
												<div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="customCheck1" data-parsley-multiple="groups"
															data-parsley-mincheck="2"> <label
															class="custom-control-label" for="customCheck1">And
															this</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="customCheck2" data-parsley-multiple="groups"
															data-parsley-mincheck="2"> <label
															class="custom-control-label" for="customCheck2">Can't
															check this</label>
													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="customCheck3" data-parsley-multiple="groups"
															data-parsley-mincheck="2"> <label
															class="custom-control-label" for="customCheck3">This
															too</label>
													</div>
												</div>
											</div>
											<div class="form-group m-b-0">
												<div>
													<button type="submit"
														class="btn btn-primary waves-effect waves-light">Submit</button>
													<button type="reset"
														class="btn btn-secondary waves-effect m-l-5">Cancel</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<!-- end col -->
						</div>
						<!-- end row -->
					</div>
					<!-- container -->
				</div>
				<!-- Page content Wrapper -->
			</div>
			<!-- content -->
		
		<!--########################################################################## 
			############################### FOOTER ###################################
			########################################################################## -->
		
			<jsp:include page="footer.jsp"></jsp:include>

		<!-- ########################################################################## -->

		</div>
		<!-- End Right content here -->
	</div>
	<!-- END wrapper -->
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
	<!-- Parsley js -->
	<script type="text/javascript"
		src="adminResources/js/parsley.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('form').parsley();
		});
	</script>
	<!-- App js -->
	<script src="adminResources/js/app.js"></script>
</body>
</html>