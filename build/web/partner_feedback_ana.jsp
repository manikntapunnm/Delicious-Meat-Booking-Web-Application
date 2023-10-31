<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>D-LICIOUS | Feedback analysis</title>
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
                            <div id="more-details">DashBoard<i class="fa fa-chevron-down m-l-5"></i></div>
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
                            <li><a href="partner_feedback_ana.jsp" class="active">Feedback Analysis</a></li>
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
            <!-- [ breadcrumb ] start -->
       <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>
    
            <div class="page-header">
                <div class="page-block">
                    <div class="row align-items-center">
                        <div class="col-md-12">
                            <div class="page-header-title">
                                <h5 class="m-b-10">Feedback Analysis</h5>
                            </div>
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
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                                                  <%
           String email = (String) session.getAttribute("email");
              session.setAttribute("email", email);
      out.println(email);
            %>
                                                     <%
//String email = (String) session.getAttribute("email");

try {
    Connection connection = new Dbconn.dbconn().getConnection();
    String partnerid = null;

    // Retrieve partner_id
    PreparedStatement stmt1 = connection.prepareStatement("SELECT partner_id FROM partners WHERE email = ?");
    stmt1.setString(1, email);
    ResultSet rs1 = stmt1.executeQuery();

    if (rs1.next()) {
        partnerid = rs1.getString("partner_id");
        out.println("partnerid:" + partnerid);
    }

    // Retrieve item_ids for the given partner_id and store them in a list
    List<String> itemIds = new ArrayList<>();
    PreparedStatement stmt2 = connection.prepareStatement("SELECT item_id FROM cart WHERE partner_id = ?");
    stmt2.setString(1, partnerid);
    ResultSet rs2 = stmt2.executeQuery();

    while (rs2.next()) {
        String itemid = rs2.getString("item_id");
        itemIds.add(itemid);
        out.println("itemid:" + itemid);
    }

    rs2.close();
    stmt2.close();

    // Retrieve item names and feedback for each item_id
    String sqlQuery = "SELECT * FROM feedback WHERE item = ?";
    
    for (String itemId : itemIds) {
        String itemname = null;
        PreparedStatement stmt3 = connection.prepareStatement("SELECT item_name FROM items1 WHERE item_id = ?");
        stmt3.setString(1, itemId);
        ResultSet rs3 = stmt3.executeQuery();

        if (rs3.next()) {
            itemname = rs3.getString("item_name");
            out.println("item:" + itemname);

            // Process the feedback for the current itemname here
            PreparedStatement statement = connection.prepareStatement(sqlQuery);
            statement.setString(1, itemname);
            ResultSet resultSet = statement.executeQuery();

            int Sno = 1;
            while (resultSet.next()) {
                String profileImageBase64 = java.util.Base64.getEncoder().encodeToString(resultSet.getBytes("customer_image"));
                String userName = resultSet.getString("customer_name");
                String date = resultSet.getString("date");
                int ratings = resultSet.getInt("rating");
                String feedbackText = resultSet.getString("message");
                String item = resultSet.getString("item");
    
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
            </tr>
                                                   
                                                   
                                                   
                                               <%
               }

            resultSet.close();
            statement.close();
        }

        rs3.close();
        stmt3.close();
    }

    rs1.close();
    stmt1.close();
} catch (Exception e) {
    e.printStackTrace();

out.println(e);
            }
            %>           
     
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- [ Main Content ] end -->
    <!-- Warning Section start -->
    <!-- Older IE warning message -->
    <!--[if lt IE 11]>
        <div class="ie-warning">
            <h1>Warning!!</h1>
            <p>You are using an outdated version of Internet Explorer, please upgrade
               <br/>to any of the following web browsers to access this website.
            </p>
            <div class="iew-container">
                <ul class="iew-download">
                    <li>
                        <a href="http://www.google.com/chrome/">
                            <img src="assets2/images/browser/chrome.png" alt="Chrome">
                            <div>Chrome</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.mozilla.org/en-US/firefox/new/">
                            <img src="assets2/images/browser/firefox.png" alt="Firefox">
                            <div>Firefox</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://www.opera.com">
                            <img src="assets2/images/browser/opera.png" alt="Opera">
                            <div>Opera</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.apple.com/safari/">
                            <img src="assets2/images/browser/safari.png" alt="Safari">
                            <div>Safari</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="assets2/images/browser/ie.png" alt="">
                            <div>IE (11 & above)</div>
                        </a>
                    </li>
                </ul>
            </div>
            <p>Sorry for the inconvenience!</p>
        </div>
    <![endif]-->
    <!-- Warning Section Ends -->

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
