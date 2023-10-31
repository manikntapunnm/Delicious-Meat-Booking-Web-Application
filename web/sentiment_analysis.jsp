<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>D-LICIOUS | sentiment_analysis</title>
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
	<link rel="stylesheet" href="assets/css/style.css">
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
	<nav class="pcoded-navbar" style="position:fixed;">
		<div class="navbar-wrapper  ">
			<div class="navbar-content scroll-div ">

				<div class="">
					<div class="main-menu-header">
						<img class="img-radius" src="assets/images/user/avatar-2.jpg" alt="User-Profile-Image">
						<div class="user-details">
							<span>Admin</span>
							<div id="more-details">Dashboard<i class="fa fa-chevron-down m-l-5"></i></div>
						</div>
					</div>
					<div class="collapse" id="nav-user-link">
						<ul class="list-unstyled">
							<!-- <li class="list-group-item"><a href="user-profile.jsp"><i class="feather icon-user m-r-5"></i>View Profile</a></li> -->
							<li class="list-group-item"><a href="#!"><i
										class="feather icon-settings m-r-5"></i>Settings</a></li>
							<li class="list-group-item"><a href="index.jsp"><i
										class="feather icon-log-out m-r-5"></i>Logout</a></li>
						</ul>
					</div>
				</div>

				<ul class="nav pcoded-inner-navbar ">
					<li class="nav-item">
						<a href="index.jsp" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
					</li>
					<li class="nav-item pcoded-hasmenu">
						<a href="#!" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-layout"></i></span><span class="pcoded-mtext">Partner
								Management</span></a>
						<ul class="pcoded-submenu">
							<li><a href="partner_pending.jsp">Pending Partners</a></li>
							<li><a href="partner_all.jsp">All Partners</a></li>
						</ul>
					</li>
				         <li class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link "><span class="pcoded-micon"><i
                                    class="feather icon-layout"></i></span><span class="pcoded-mtext">Item
                                Management</span></a>
                        <ul class="pcoded-submenu">
                            <li><a href="add-item.jsp">Add Item</a></li>
                              <li><a href="items_all.jsp">Manage Items </a></li>
                        </ul>
                    </li>
                    <li class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link "><span class="pcoded-micon"><i
                                    class="feather icon-layout"></i></span><span class="pcoded-mtext">Booking
                                Management</span></a>
                        <ul class="pcoded-submenu">
                            <li><a href="admin-orders.jsp">Customer Booking</a></li>
                        </ul>
                    </li>
					<li class="nav-item pcoded-hasmenu">
						<a href="#!" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-layout"></i></span><span class="pcoded-mtext">User
								Management</span></a>
						<ul class="pcoded-submenu">
							<li><a href="user-details.jsp">User Deatails</a></li>
						</ul>
					</li>
					<li class="nav-item pcoded-hasmenu">
						<a href="#!" class="nav-link "><span class="pcoded-micon"><i
									class="feather icon-layout"></i></span><span class="pcoded-mtext">Feedback
								Management</span></a>
						<ul class="pcoded-submenu">
							<li><a href="feedback_analysis.jsp">Feedback Analysis</a></li>
							<li><a href="sentiment_analysis.jsp">Sentiment Analysis</a></li>
							<li><a href="sentimental_graph.jsp">Sentiment Graph</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- [ navigation menu ] end -->
	<!-- [ Header ] start -->
	<header class="navbar pcoded-header navbar-expand-lg navbar-light header-dark" style="position:fixed;">


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
				<img src="assets/images/logo-icon.png" alt="" class="logo-thumb">
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
								<img src="assets/images/user/avatar-1.jpg" class="img-radius" alt="User-Profile-Image">
								<span>John Doe</span>
								<a href="index.jsp" class="dud-logout" title="Logout">
									<i class="feather icon-log-out"></i>
								</a>
							</div>
							<ul class="pro-body">
								<!-- <li><a href="user-profile.jsp" class="dropdown-item"><i class="feather icon-user"></i> Profile</a></li> -->
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
			<!-- [ breadcrumb ] start -->
			<div class="page-header">
				<div class="page-block">
					<div class="row align-items-center">
						<div class="col-md-12">
							<div class="page-header-title">
								<h5 class="m-b-10">Sentiment Analysis</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
  <style>
        .emoji {
            font-size: 30px; /* Set your desired font size here */
            line-height: 1; /* Set line-height to adjust vertical alignment */
            display: inline-block;
            width: 30px; /* Set width to match font-size */
            height: 30px; /* Set height to match font-size */
        }
    </style>
				<!-- Latest Customers start -->
  <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>
    
				<div class="col-md-12">
					<div class="card">
						<div class="card-body table-border-style">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
                                                                                    <th>S.no</th>
                                                                                    <th>Profile</th>
                                                                                    <th>Name</th>
                                                                                    <th>Item</th>
                                                                                    <th>Ratings</th>
                                                                                    <th>Feedback</th>
                                                                                    <th>Date</th>
                                                                                    <th>Sentiment</th>
                                                                                    <th>Emoji</th>
										</tr>
									</thead>
									<tbody>
                                                                              <%
try {
    Connection connection = new Dbconn.dbconn().getConnection();

   String sqlQuery = "SELECT * FROM feedback";
                PreparedStatement statement = connection.prepareStatement(sqlQuery);
                ResultSet resultSet = statement.executeQuery();
        int Sno=1;
        while (resultSet.next()) {
                  
                    String profileImageBase64 = java.util.Base64.getEncoder().encodeToString(resultSet.getBytes("customer_image"));
                    String userName = resultSet.getString("customer_name");
                    String date = resultSet.getString("date");
                    int ratings = resultSet.getInt("rating");
                    String feedbackText = resultSet.getString("message");
                    String item = resultSet.getString("item");
                     String sentiment = resultSet.getString("sentiment");
                     String emoji = "";
                    if (sentiment.equals("Very Negative")) {
                        emoji = "&#128542;"; // Very Negative Emoji
                    } else if (sentiment.equals("Negative")) {
                        emoji = "&#128577;"; // Negative Emoji
                    } else if (sentiment.equals("Neutral")) {
                        emoji = "&#128528;"; // Neutral Emoji
                    } else if (sentiment.equals("Positive")) {
                        emoji = "&#128513;"; // Positive Emoji
                    } else {
                        emoji = "&#128525;"; // Very Positive Emoji
                    }
   

    
%>
										<tr class="table-active">
											
											
                                                                                        
                                                                                        
                                                                                         <td><%= Sno++ %></td>
                <td><img src="data:image/jpeg;base64,<%= profileImageBase64 %>" alt="user image" class="img-radius wid-40 align-top m-r-15"></td>
                <td><%= userName %></td>
                <td><%= item %></td>
                <td>
                    <%
                    for (int i = 0; i < ratings; i++) {
                    %>
                    <a href="#!"><i class="feather icon-star-on f-18 text-c-yellow"></i></a>
                    <%
                    }
                    for (int i = ratings; i < 5; i++) {
                    %>
                    <a href="#!"><i class="feather icon-star f-18 text-muted"></i></a>
                    <%
                    }
                    %>
                </td>
                <td><textarea name="" id="" cols="20" rows="2" placeholder="" readonly><%= feedbackText %></textarea></td>
                <td><%= date %></td>
                
                <td><textarea rows="2" cols="10"><%=sentiment%></textarea> </td>
	      <td><span class="emoji"><%= emoji %></span></td>
                                                                                        
										</tr>
										
										
								 <%
                }
                // Close the database resources
                resultSet.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            %>           		
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- Latest Customers end -->
			</div>
			<!-- [ Main Content ] end -->
		</div>
	</div>
	<!-- Required Js -->
	<script src="assets/js/vendor-all.min.js"></script>
	<script src="assets/js/plugins/bootstrap.min.js"></script>
	<script src="assets/js/pcoded.min.js"></script>

	<!-- Apex Chart -->
	<script src="assets/js/plugins/apexcharts.min.js"></script>


	<!-- custom-chart js -->
	<script src="assets/js/pages/dashboard-main.js"></script>
</body>

</html>
