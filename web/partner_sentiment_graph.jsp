<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>D-LICIOUS | Sentiment Graph</title>
	<!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 11]>
    	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    	<![endif]-->

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="" />
	<meta name="keywords" content="">
	<meta name="author" content="Phoenixcoded" />
	<!-- Favicon icon -->
	<link rel="icon" href="https://geo-media.beatport.com/image_size/500x500/d2dc75c2-a3b0-4b7a-ac56-85732f73b166.jpg"
		type="image/x-icon">
	<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" /> -->

	<!-- vendor css -->
	<link rel="stylesheet" href="assets2/css/style.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>

<body class="">
	<!-- [ Pre-loader ] start -->
	<div class="loader-bg">
		<div class="loader-track">
			<div class="loader-fill"></div>
		</div>
	</div>
	<!-- [ Pre-loader ] End -->
	<!-- [ navigation menu ] start -->
	<nav class="pcoded-navbar" style="position: fixed;">
		<div class="navbar-wrapper  ">
			<div class="navbar-content scroll-div ">

				<div class="">
					<div class="main-menu-header">
						<img class="img-radius" src="assets2/images/user/avatar-2.jpg" alt="User-Profile-Image">
						<div class="user-details">
							<span>Partner</span>
							<div id="more-details">Dashboard<i class="fa fa-chevron-down m-l-5"></i></div>
						</div>
					</div>
					<div class="collapse" id="nav-user-link">
						<ul class="list-unstyled">
							<li class="list-group-item"><a href="partner_profile.jsp"><i
										class="feather icon-user m-r-5"></i>View Profile</a></li>
							<!-- <li class="list-group-item"><a href="#!"><i class="feather icon-settings m-r-5"></i>Settings</a></li> -->
							<li class="list-group-item"><a href="index.jsp"><i
										class="feather icon-log-out m-r-5"></i>Logout</a></li>
						</ul>
					</div>
				</div>

				<ul class="nav pcoded-inner-navbar ">
					<li class="nav-item">
						<a href="partner-dashboard.jsp" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
					</li>
					<li class="nav-item pcoded-hasmenu">
						<a href="#!" class="nav-link "><span class="pcoded-micon"><i
									class="bi bi-journal-check"></i></span><span class="pcoded-mtext">Booking
								Management</span></a>
						<ul class="pcoded-submenu">
							<li><a href="partner_pending_book.jsp">Orders</a></li>
							<li><a href="partner_items.jsp">My Items</a></li>
							<li><a href="partner_all_bookings.jsp">ALL Bookings</a></li>
						</ul>
					</li>
					<li class="nav-item pcoded-hasmenu">
						<a href="#!" class="nav-link "><span class="pcoded-micon"><i
									class="bi bi-journal-check"></i></span><span class="pcoded-mtext">Feedback
								Management</span></a>
						<ul class="pcoded-submenu">
							<li><a href="partner_feedback_ana.jsp">Feedback Analysis</a></li>
							<li><a href="partner_sentiment_anal.jsp">Sentiment Analysis</a></li>
							<!--li><a href="partner_sentiment_graph.jsp">Sentiment Graph</a></li-->
						</ul>
					</li>

			</div>
		</div>
	</nav>
	<!-- [ navigation menu ] end -->
	<!-- [ Header ] start -->
	<header class="navbar pcoded-header navbar-expand-lg navbar-light header-dark" style="position: fixed;">


		<div class="m-header">
			<a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
			<a href="#!" class="b-brand">
				<!-- ========   change your logo hear   ============ -->
				<div>
					<a href="index.jsp">
						<h3><b class="text-danger">D</b>-<b class="text-primary">L</b>&nbsp;<b
								class="text-secondary">I</b>&nbsp;<b class="text-success">C</b>&nbsp;<b
								class="text-warning">I</b>&nbsp;<b class="text-info">O</b>&nbsp;<b
								class="text-danger">U</b>&nbsp;<b class="text-danger">S</b>
					</a></h>
				</div>
				<img src="assets2/images/logo-icon.png" alt="" class="logo-thumb">
			</a>
			<a href="#!" class="mob-toggler">
				<i class="feather icon-more-vertical"></i>
			</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<a href="#!" class="pop-search"><i class="feather icon-search"></i></a>
					<div class="search-bar">
						<input type="text" class="form-control border-0 shadow-none" placeholder="Search hear">
						<button type="button" class="close" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				</li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li>
					<div class="dropdown drp-user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="feather icon-user"></i>
						</a>
						<div class="dropdown-menu dropdown-menu-right profile-notification">
							<div class="pro-head">
								<img src="assets2/images/user/avatar-1.jpg" class="img-radius" alt="User-Profile-Image">
								<span>John Doe</span>
								<a href="index.jsp" class="dud-logout" title="Logout">
									<i class="feather icon-log-out"></i>
								</a>
							</div>
							<ul class="pro-body">
								<li><a href="partner_profile.jsp" class="dropdown-item"><i
											class="feather icon-user"></i> Profile</a></li>
								<li><a href="index.jsp" class="dropdown-item"><i class="feather icon-lock"></i>
										Logout</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>


	</header>
	<!-- [ Header ] end -->



	<!-- [ Main Content ] start -->
	<div class="pcoded-main-container">
		<div class="pcoded-content">
			 
			<div class="page-header">
				<div class="page-block">
					<div class="row align-items-center">
						<div class="col-md-12">
							<div class="page-header-title">
								<h5 class="m-b-10">Sentiment Graph</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				  
<!--				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h5>Bar chart</h5>
						</div>
						<div class="card-body">
							<div id="bar-chart-1"></div>
						</div>
					</div>
				</div>-->
<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h5>Bar chart</h5>
						</div>
<!--						<div class="card-body">
							<div id="bar-chart-1"></div>
						</div>
                                            -->
                                                                                                    
                                <div style="display: flex; justify-content: center; align-items: center; height: 70vh;">
        <canvas id="myBarChart" width="400" height="200"></canvas>
    </div>

      				</div>
                                    
<!--                                                          <div>
        <p>Total Orders: <span id="totalOrdersValue"></span></p>
        <p>Total Items: <span id="totalItemsValue"></span></p>
        
        <p>Total Partners: <span id="totalPartnersValue"></span></p>
    </div> -->
                                    
      
				</div>
                            
                            
                             <script src="chart.js"></script>
                            
			</div>
			
		</div>
	</div>
        
        
<!--	 Required Js -->
 

   
	<script src="assets2/js/vendor-all.min.js"></script>
	<script src="assets2/js/plugins/bootstrap.min.js"></script>
	<script src="assets2/js/pcoded.min.js"></script>

	<script src="assets2/js/plugins/apexcharts.min.js"></script>
	<script src="assets2/js/pages/chart-apex.js"></script>


</body>

</html>
