<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>D-LICIOUS | Dashboard</title>

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


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">
</head>

<body class="">
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
            title: 'Login',
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
    <nav class="pcoded-navbar" style="position:fixed;">
        <div class="navbar-wrapper  ">
            <div class="navbar-content scroll-div">

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
                            <li class="list-group-item"><a href="admin-login.jsp"><i
                                        class="feather icon-log-out m-r-5"></i>Logout</a></li>
                        </ul>
                    </div>
                </div>

                <ul class="nav pcoded-inner-navbar ">
                    <li class="nav-item">
                        <a href="admin-dashboard.jsp" class="nav-link "><span class="pcoded-micon"><i
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
                                <li><a href="index.jsp" class="dropdown-item"><i
                                            class="feather icon-lock"></i>Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>


    </header>
    <!-- [ Header ] end -->
      <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%> 
    <%
        
Connection connection = null;

try {
    // Get a database connection
    connection = new Dbconn.dbconn().getConnection();

    // Count total items from items1 table
    String itemsCountQuery = "SELECT COUNT(*) AS item_count FROM items1";
    PreparedStatement itemsCountStatement = connection.prepareStatement(itemsCountQuery);
    ResultSet itemsCountResult = itemsCountStatement.executeQuery();

    int itemCount = 0;
    if (itemsCountResult.next()) {
        itemCount = itemsCountResult.getInt("item_count");
    }

    // Count total partners from partners table
    String partnersCountQuery = "SELECT COUNT(*) AS partner_count FROM partners";
    PreparedStatement partnersCountStatement = connection.prepareStatement(partnersCountQuery);
    ResultSet partnersCountResult = partnersCountStatement.executeQuery();

    int partnerCount = 0;
    if (partnersCountResult.next()) {
        partnerCount = partnersCountResult.getInt("partner_count");
    }

    // Count total new partners with pending status
    String newPartnersCountQuery = "SELECT COUNT(*) AS new_partner_count FROM partners WHERE partstatus = 'pending'";
    PreparedStatement newPartnersCountStatement = connection.prepareStatement(newPartnersCountQuery);
    ResultSet newPartnersCountResult = newPartnersCountStatement.executeQuery();

    int newPartnerCount = 0;
    if (newPartnersCountResult.next()) {
        newPartnerCount = newPartnersCountResult.getInt("new_partner_count");
    }

    // Count total customers from customers table
    String customersCountQuery = "SELECT COUNT(*) AS customer_count FROM customers";
    PreparedStatement customersCountStatement = connection.prepareStatement(customersCountQuery);
    ResultSet customersCountResult = customersCountStatement.executeQuery();

    int customerCount = 0;
    if (customersCountResult.next()) {
        customerCount = customersCountResult.getInt("customer_count");
    }

    // Count total orders from cart
    String ordersCountQuery = "SELECT COUNT(*) AS order_count FROM cart";
    PreparedStatement ordersCountStatement = connection.prepareStatement(ordersCountQuery);
    ResultSet ordersCountResult = ordersCountStatement.executeQuery();

    int orderCount = 0;
    if (ordersCountResult.next()) {
        orderCount = ordersCountResult.getInt("order_count");
    }
        %>


    <!-- [ Main Content ] start -->
    <div class="pcoded-main-container">
        <div class="pcoded-content">
            <!-- [ breadcrumb ] start -->
            <div class="page-header">
                <div class="page-block">
                    <div class="row align-items-center">
                        <div class="col-md-12">
                            <div class="page-header-title">
                                <h5 class="m-b-10">Dashboard</h5>
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
                            <div class="col-sm-6 card-body br">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <i class="icon feather icon-eye text-c-green mb-1 d-block"></i>
                                    </div>
                                    <div class="col-sm-8 text-md-center">
                                        <h5><%= itemCount %></h5>
                                        <span>total items</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 card-body">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <i class="icon feather icon-music text-c-red mb-1 d-block"></i>
                                    </div>
                                    <div class="col-sm-8 text-md-center">
                                        <h5><%= partnerCount %></h5>
                                        <span>total partners</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row-table">
                            <div class="col-sm-6 card-body br">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <i class="icon feather icon-file-text text-c-blue mb-1 d-block"></i>
                                    </div>
                                    <div class="col-sm-8 text-md-center">
                                        <h5><%= customerCount %></h5>
                                        <span>total customers</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 card-body">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <i class="icon feather icon-mail text-c-yellow mb-1 d-block"></i>
                                    </div>
                                    <div class="col-sm-8 text-md-center">
                                        <h5><%= newPartnerCount %></h5>
                                        <span>New Partners</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- widget primary card start -->
                    <div class="card flat-card widget-primary-card">
                        <div class="row-table">
                            <div class="col-sm-2 card-body">
                                <i class="feather icon-star-on"></i>
                            </div>
                            <div class="col-sm-10">
                                <h4><%= orderCount %></h4>
                                <h6>total Orders</h6>
                            </div>
                        </div>
                    </div>
                    <!-- widget primary card end -->
                </div>
                
                
                
                <%
                   } catch (SQLException e) {
    e.printStackTrace(); // Handle any potential exceptions here
} finally {
    // Close the database connection in a finally block to ensure it's always closed
    if (connection != null) {
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle any exceptions that occur while closing the connection
        }
    }
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
                    <div class="card flat-card widget-purple-card">
                        <div class="row-table">
                            <div class="col-sm-3 card-body">
                                <i class="fas fa-trophy"></i>
                            </div>
                            <div class="col-sm-9">
                                <h4>17</h4>
                                <h6>Achievements</h6>
                            </div>
                        </div>
                    </div>
                     widget-success-card end 
                </div>-->
                <!-- table card-2 end -->
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
                <!-- seo end -->

                <!-- Latest Customers start -->

            </div>
            <!-- [ Main Content ] end -->
        </div>
    </div>

    <!-- Warning Section Ends -->

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
