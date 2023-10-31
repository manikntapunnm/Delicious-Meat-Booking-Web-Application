<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>D-LICIOUS | Home</title>
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

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">

</head>

<body class="">
            <%
String loginaction = (String) session.getAttribute("loginaction");
if (loginaction != null) {
    // Clear the message attribute to prevent repeated display
    session.removeAttribute("loginaction");
%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <script>
        Swal.fire({
            icon: '<%= "Success".equals(loginaction) ? "success" : "error" %>',
            title: 'Login',
            text: '<%= loginaction %>',
            timer: 1000, // Auto-close the dialog after 3 seconds
            //timerProgressBar: true,
            showConfirmButton: false
        })
    </script>
<%
}
%>

           <%
String msg = (String) session.getAttribute("msg");
if (msg != null) {
    // Clear the message attribute to prevent repeated display
    session.removeAttribute("msg");
%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <script>
        Swal.fire({
            icon: '<%= "Success".equals(msg) ? "success" : "error" %>',
            title: 'Register',
            text: '<%= msg %>',
            timer: 1000, // Auto-close the dialog after 3 seconds
            //timerProgressBar: true,
            showConfirmButton: false
        })
    </script>
<%
}
%>


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
                             <li><a href="partner_items.jsp">My Items</a></li>
                             <li><a href="partner_pending_book.jsp">Orders</a></li>
                           <li><a href="partner_all_bookings.jsp">ALL Items</a></li>
                        </ul>
                    </li>
                    <li class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link "><span class="pcoded-micon"><i
                                    class="bi bi-journal-check"></i></span><span class="pcoded-mtext">Feedback
                                Management</span></a>
                        <ul class="pcoded-submenu">
                            <li><a href="partner_feedback_ana.jsp">Feedback Analysis</a></li>
                            <li><a href="partner_sentiment_anal.jsp">Sentiment Analysis</a></li>
                            <li><a href="partner_sentiment_graph.jsp">Sentiment Graph</a></li>
                        </ul>
                    </li>
                    <%
String partnerId = (String) session.getAttribute("partner_id");
session.setAttribute("partner_id", partnerId);
if (partnerId != null) {
    out.println("Partner ID: " + partnerId);
} else {
    out.println("Partner ID not found in session.");
}
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
            <!-- [ breadcrumb ] start -->
            <div class="page-header">
                <div class="page-block">
                    <div class="row align-items-center">
                        <div class="col-md-12">
                            <div class="page-header-title">
                                <h5 class="m-b-10">Dashboard Analytics</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- [ breadcrumb ] end -->
            <!-- [ Main Content ] start -->
            <div class="row">
                <!-- table card-1 start -->
                <div class="col-md-12 ">
                    <div class="card flat-card">
                        <div class="row-table">
                            
                            <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>  
                            <%
try {
    Connection connection = new Dbconn.dbconn().getConnection();
    int itemCount = 0; // Initialize the item count
  int myitemCount = 0;
    int acceptedCount = 0;
    int rejectedCount = 0;
    int cartOrderCount = 0;
    int partnerOrderCount = 0;
    int orderCount =0;
   
    
    

    
    // Execute a SQL query to count the items in the items1 table
    String sqlQuery = "SELECT COUNT(*) as item_count FROM items1";
   
   

    

    PreparedStatement statement = connection.prepareStatement(sqlQuery);
    ResultSet resultSet = statement.executeQuery();

    if (resultSet.next()) {
        itemCount = resultSet.getInt("item_count");
    }

    resultSet.close();
    statement.close();
    
    
    


 String sqlQueryPartner = "SELECT COUNT(*) as partner_order_count FROM cart WHERE partner_id = ?";
    PreparedStatement stmtPartner = connection.prepareStatement(sqlQueryPartner);
    stmtPartner.setString(1, partnerId);
    ResultSet rsPartner = stmtPartner.executeQuery();

    if (rsPartner.next()) {
        partnerOrderCount = rsPartner.getInt("partner_order_count");
    }//myorders

    rsPartner.close();
    stmtPartner.close();
    
    
    
 String sqlCountItems = "SELECT COUNT(*) as myitems FROM partneritems WHERE partner_id=?";
    PreparedStatement stmtCountItems = connection.prepareStatement(sqlCountItems);
    stmtCountItems.setString(1, partnerId);
    ResultSet rsCountItems = stmtCountItems.executeQuery();

    if (rsCountItems.next()) {
        myitemCount = rsCountItems.getInt("myitems");
    }
//item count
    rsCountItems.close();
    stmtCountItems.close();

   
   

//  
//  
// String sqlQueryCart = "SELECT COUNT(*) as cart_order_count FROM cart  ";
//    PreparedStatement stmtCart = connection.prepareStatement(sqlQueryCart);
//    ResultSet rsCart = stmtCart.executeQuery();
//
//    if (rsCart.next()) {
//        cartOrderCount = rsCart.getInt("cart_order_count");
//    }
////no of orders
//    rsCart.close();
//    stmtCart.close();
//    

String sqlSelectItemIds = "SELECT DISTINCT item_id FROM cart WHERE partner_id=?";
    PreparedStatement stmtSelectItemIds = connection.prepareStatement(sqlSelectItemIds);
    stmtSelectItemIds.setString(1, partnerId);
    ResultSet rsItemIds = stmtSelectItemIds.executeQuery();
    
    // Loop through the selected itemids
    while (rsItemIds.next()) {
        String itemId = rsItemIds.getString("item_id");
        
        // Count the number of orders for each itemid
        String sqlCountOrders = "SELECT COUNT(*) as order_count FROM cart WHERE item_id=?";
        PreparedStatement stmtCountOrders = connection.prepareStatement(sqlCountOrders);
        stmtCountOrders.setString(1, itemId);
        ResultSet rsCountOrders = stmtCountOrders.executeQuery();

        if (rsCountOrders.next()) {
            orderCount = rsCountOrders.getInt("order_count");
           
        }

        rsCountOrders.close();
        stmtCountOrders.close();
    }

    rsItemIds.close();
    stmtSelectItemIds.close();
    
    
%>
                    <div class="col-sm-6 card-body br">
    <div class="row">
        <div class="col-sm-4">
            <i class="icon feather icon-eye text-c-green mb-1 d-block"></i>
        </div>
        <div class="col-sm-8 text-md-center">
            <h4><%= itemCount %></h4>
            <span>Total Items</span>
        </div>
    </div>
</div>
            
          
           
            
                 
                            <div class="col-sm-6 card-body">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <i class="icon feather icon-music text-c-red mb-1 d-block"></i>
                                    </div>
                                    <div class="col-sm-8 text-md-center">
                                        <h4><%= myitemCount %></h4>
                                
                                        <span>My Items</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row-table">
<!--                            <div class="col-sm-6 card-body br">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <i class="icon feather icon-file-text text-c-blue mb-1 d-block"></i>
                                    </div>
                                    <div class="col-sm-8 text-md-center">
                                        <h5><%= acceptedCount %></h5>
                                        <span>Items Accepted</span>
                                    </div>
                                </div>
                            </div>-->
<!--                            <div class="col-sm-6 card-body">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <i class="icon feather icon-mail text-c-yellow mb-1 d-block"></i>
                                    </div>
                                    <div class="col-sm-8 text-md-center">
                                        <h5><%= rejectedCount %></h5>
                                        <span>Items Rejected</span>
                                    </div>
                                </div>
                            </div>-->
                        </div>
                    </div>
                    <!-- widget primary card start -->
          <div class="row">
    <div class="col-sm-6">
        <div class="card flat-card widget-primary-card">
            <div class="row-table">
                <div class="col-sm-2 card-body">
                    <i class="feather icon-star-on"></i>
                </div>
                <div class="col-sm-10">
                    <h4><%= orderCount %></h4>
                    <h6>Total Orders</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="card flat-card widget-purple-card">
            <div class="row-table">
                <div class="col-sm-2 card-body">
                    <i class="fas fa-trophy"></i>
                </div>
                <div class="col-sm-10">
                    <h4><%= partnerOrderCount %></h4>
                    <h6>My Delivers</h6>
                </div>
            </div>
        </div>
    </div>
</div>

                    <!-- widget primary card end -->
                </div>
              
                             
                                        
                                                    <%
                                                        
} catch (Exception e) {
    e.printStackTrace();
    // Handle exceptions here
}
%>   
                <!-- table card-1 end -->
                <!-- table card-2 start -->
<!--                <div class="col-md-12 col-xl-6">
                    <div class="card flat-card">
                        <div class="row-table">
                            <div class="col-sm-6 card-body br">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <i class="icon feather icon-share-2 text-c-blue mb-1 d-block"></i>
                                    </div>
                                    <div class="col-sm-8 text-md-center">
                                        <h5>1000</h5>
                                        <span>Shares</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 card-body">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <i class="icon feather icon-wifi text-c-blue mb-1 d-block"></i>
                                    </div>
                                    <div class="col-sm-8 text-md-center">
                                        <h5>600</h5>
                                        <span>Network</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row-table">
                            <div class="col-sm-6 card-body br">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <i class="icon feather icon-rotate-ccw text-c-blue mb-1 d-block"></i>
                                    </div>
                                    <div class="col-sm-8 text-md-center">
                                        <h5>3550</h5>
                                        <span>Returns</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 card-body">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <i class="icon feather icon-shopping-cart text-c-blue mb-1 d-blockz"></i>
                                    </div>
                                    <div class="col-sm-8 text-md-center">
                                        <h5>100%</h5>
                                        <span>Order</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     widget-success-card start 
            
                     widget-success-card end 
                </div>-->
                <!-- table card-2 end -->
                <!-- Latest Customers start -->
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="mb-3">Total Leads</h5>
                            <p class="text-c-green f-w-500"><i class="fa fa-caret-up m-r-15"></i> 18% High than last
                                month</p>
                            <div class="row">
                                <div class="col-4 b-r-default">
                                    <p class="text-muted m-b-5">Overall</p>
                                    <h5>76.12%</h5>
                                </div>
                                <div class="col-4 b-r-default">
                                    <p class="text-muted m-b-5">Monthly</p>
                                    <h5>16.40%</h5>
                                </div>
                                <div class="col-4">
                                    <p class="text-muted m-b-5">Day</p>
                                    <h5>4.56%</h5>
                                </div>
                            </div>
                        </div>
                        <div id="tot-lead" style="height:150px"></div>
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
