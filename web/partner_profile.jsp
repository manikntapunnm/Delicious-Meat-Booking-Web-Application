<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>D-LICIOUS | Profile</title>
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

	<!-- vendor css -->
	<link rel="stylesheet" href="assets2/css/style.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">



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

				<ul class="nav pcoded-inner-navbar">
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
							<li><a href="partner_feedback_ana.jsp">Sentiment Analysis</a></li>
							<li><a href="partner_sentiment_anal.jsp">Sentiment Graph</a></li>
						</ul>
					</li>
                                              <%
           String email = (String) session.getAttribute("email");
              session.setAttribute("email", email);
      out.println(email);
            %>
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
			<!-- [ Main Content ] start -->
               <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
                        <%



            session.setAttribute("email", email);
// //out.println(email);
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = new Dbconn.dbconn().getConnection();

    // Retrieve the image from the appropriate table
    String sql = "SELECT * FROM partners    where email=?" ;
    PreparedStatement statement = connection.prepareStatement(sql);
      statement.setString(1, email);
    ResultSet resultSet = statement.executeQuery();
   
    while (resultSet.next()) {
            byte[] ImageBytes = resultSet.getBytes("image");
         String ImageBase64 = Base64.encodeBase64String(ImageBytes);
         
%>
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="container rounded bg-white mt-5 mb-5">
						<div class="row">
                                                    

           <div class="col-md-4 border-right">                        
                          <form action="partner-profile-action.jsp?email=<%=email%>" method="post" enctype="multipart/form-data">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                            <img class="rounded-circle mt-5" width="150px" src="data:image/jpeg;base64,<%= ImageBase64 %>">
                            <span
                                class="font-weight-bold"><%= resultSet.getString("firstname") %></span><span
                                class="text-black-50"><%=email%></span><span>
                                </span>
                                <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                        
                            
                            <input type="hidden" name="email2" value="<%= email %>"> 

<div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text">Upload</span>
        </div>
        <div class="custom-file">
            <input name="image" type="file" class="custom-file-input" id="inputGroupFile01" required onchange="showImagePreview()">
            <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
        </div>
    </div>
                          
 <input class="btn btn-info " style="border-radius:20px; color: white;" type="submit"  value="Upload Profile Pic"   />
                        </div>

                          </form>
                    </div>
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                  
                    <div class="col-md-8 border-right">
                         <form action="partner-profile-action.jsp?email=<%=email%>" method="post" enctype="multipart/form-data">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Profile Settings</h4>
                            </div>
                            <div class="row mt-2">
                                <div class="col-md-6"><label class="labels">Full Name</label>
                                    <input type="text" name="name"
                                        class="form-control" placeholder="Enter Name" value="<%= resultSet.getString("firstname") %>"></div>
                                <div class="col-md-6"><label class="labels">Email ID</label>
                                    <input type="email"
                                        class="form-control" value="<%= resultSet.getString("email") %>" name="email" placeholder="Codebook@gmail.com "></div>
                            </div>
                            <div class="row mt-3">
                                
                                
                                <div class="col-md-6"><label class="labels">Mobile Number</label>
                                    <input type="text"
                                        class="form-control" placeholder="enter phone number" name="phone" value="<%= resultSet.getString("phone") %>"></div>
                                        
                                        
                                <div class="col-md-6"><label class="labels">State</label>
                                    <input type="text"
                                        class="form-control" placeholder="enter address line 2" name="state" value="<%= resultSet.getString("state") %>"></div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-6"><label class="labels">Address</label><input type="text"
                                        class="form-control" placeholder="City" name="address" value="<%= resultSet.getString("address") %>"></div>
                                            <div class="col-md-6"><label class="labels">Password</label>
                                    <input type="text"
                                        class="form-control" placeholder="enter address line 2" name="password" value="<%= resultSet.getString("password") %>"></div>
                            </div>
                            </div>
                         
                             
                            <div class="mt-1 text-center"><button class="btn btn-primary profile-button"
                                    type="submit">Save Profile</button>
<!--                                <input class="btn btn-info profile-button " style="border-radius:20px; color: white;" type="submit"  value="Update"   />-->
                            </div>
                            
                        </div>
							
                            <%
    }

    // Close resources
    resultSet.close();
    statement.close();
    connection.close();
} catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
}
%>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Latest Customers end -->
	</div>
	<!-- [ Main Content ] end -->
	</div>
	</div>
	<!-- [ Main Content ] end -->
	<!-- Required Js -->
	<script src="assets2/js/vendor-all.min.js"></script>
	<script src="assets2/js/plugins/bootstrap.min.js"></script>
	<script src="assets2/js/pcoded.min.js"></script>

	<!-- Apex Chart -->
	<script src="assets2/js/plugins/apexcharts.min.js"></script>


	<!-- custom-chart js -->
	<script src="assets2/js/pages/dashboard-main.js"></script>
</body>

</html>
