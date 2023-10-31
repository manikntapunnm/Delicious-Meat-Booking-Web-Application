<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>D-LICIOUS | pending bookings</title>
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
                            <li><a href="partner_feedback_ana.jsp">Feedback Analysis</a></li>
                            <li><a href="partner_sentiment_anal.jsp">Sentiment Analysis</a></li>
                            <!--li><a href="partner_sentiment_graph.jsp">Sentiment Graph</a></li-->
                        </ul>
                    </li>
                </ul>
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
                              <%
           String email = (String) session.getAttribute("email");
              session.setAttribute("email", email);
      out.println(email);
            %>
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
    <section class="pcoded-main-container">
        <div class="pcoded-content">
            <!-- [ breadcrumb ] start -->
            <div class="page-header">
                <div class="page-block">
                    <div class="row align-items-center">
                        <div class="col-md-12">
                            <div class="page-header-title">
                                <h5 class="m-b-10">Booking Management Details</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- [ breadcrumb ] end -->
            <!-- [ Main Content ] start -->
            <div class="row">

                <!-- [ Contextual-table ] start -->
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>Pending Bookings
                            </h5>
                        </div>
                         <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>
<% 
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Connection connection = new Dbconn.dbconn().getConnection();

        String partnerIdQuery = "SELECT partner_id FROM partners WHERE email = ?";
        stmt = connection.prepareStatement(partnerIdQuery);
        stmt.setString(1, email);
        rs = stmt.executeQuery();

        while (rs.next()) {
            String partnerId = rs.getString("partner_id");

            // Now, select itemid in items1 where partnerid matches
            String itemIdQuery = "SELECT item_id FROM partneritems WHERE partner_id = ?";
            stmt = connection.prepareStatement(itemIdQuery);
            stmt.setString(1, partnerId);
            ResultSet itemResultSet = stmt.executeQuery();

            %>
                    
         
               
                        <div class="card-body table-border-style">
                      <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <%
   
    out.println("<span style='color: green;'>PartnerId: " + partnerId + "</span><br>");
%>

                                        <tr>
                                            <th>Sno</th>
                                            <th>Image</th>
                                            <th>Item Name</th>
                                            <th>First Name</th>
                                            <th>Quantity in KG</th>
                                            <th>Category</th>
<!--                                            <th>Status</th>-->
                                            
                                            <th>Pending_list</th>
                                        </tr>
                                    </thead>
<%
                        int Sno = 1;

                        while (itemResultSet.next()) {
                            String itemId = itemResultSet.getString("item_id");
// out.println("<span style='color: blue;'>itemId: " + itemId + "</span><br>");


String query = "SELECT cart.*, customers.*, items1.* " +
               "FROM cart " +
               "INNER JOIN customers ON cart.customer_id = customers.customer_id " +
               "INNER JOIN items1 ON cart.item_id = items1.item_id " +
               "WHERE cart.booking_status = 'Placed' " +
               "AND items1.item_id = ? " +
              
               "AND (cart.partner_id IS NULL OR cart.partner_id = ?) " +// Remove the semicolon here
               "AND cart.orderdate = (SELECT MAX(orderdate) FROM cart)";
stmt = connection.prepareStatement(query);
stmt.setString(1, itemId);
stmt.setString(2, partnerId);

                            ResultSet cartResultSet = stmt.executeQuery();

                            while (cartResultSet.next()) {
                            int cartid=cartResultSet.getInt("cart_id");
                             String itemName = cartResultSet.getString("item_name");
                             String Name = cartResultSet.getString("firstname");
                             String quantity = cartResultSet.getString("quantity_kgs");
                             String category = cartResultSet.getString("category");
                             byte[] imageDataBytes = cartResultSet.getBytes("image");
            String base64Image = java.util.Base64.getEncoder().encodeToString(imageDataBytes);
        

                             
    
                        %>
                            <style>
                                    .hover-zoom {
    transition: transform 0.3s ease; /* Add a smooth transition for the zoom effect */
}

.hover-zoom:hover {
    transform: scale(4); /* Scale the image up to three times its original size on hover */
}
</style>

                                    <tbody>
                                        <tr class="table-active">
                                            <td><%=Sno++%></td>
                                            <td><img src="data:image/jpeg;base64,<%= base64Image %>" alt="user image" class="img-radius wid-40 align-top m-r-10 hover-zoom"></td>
                                            <td><%=itemName%></td>
                                            <td><%=Name%></td>
                                            <td><%=quantity%></td>
                                            <td><%=category%></td>
                                            
                                             
                                            <td>
<!--                                                <div class="btn btn-success" style="border-radius: 10px;"><i
                                                        class="bi bi-check-md"></i></div>
                                                <div   class="btn btn-danger" style="border-radius: 10px;"><i
                                                        class="bi bi-x-md"></i></div>-->
                                                
                        <div class="row">
            <form action="orderchoice.jsp?partnerid=<%= partnerId %>&itemid=<%= itemId %>&cartid=<%=cartid%>" method="post">
                <input type="hidden" name="email" value="<%= session.getAttribute("email") %>">
                <input type="hidden" name="newstatus" value="accepted">
                <button type="submit" class="btn-xs btn-success">Accept</button>
            </form>
            &nbsp;&nbsp;
            <form action="orderchoice.jsp?partnerid=<%= partnerId %>&itemid=<%= itemId %>&cartid=<%=cartid%>" method="post">
                <input type="hidden" name="email" value="<%= session.getAttribute("email") %>">
                <input type="hidden" name="newstatus" value="rejected">
                <button type="submit" class="btn-xs btn-danger">Reject</button>
            </form></div>
                                            </td>
                                        </tr>
                                        
                                   
                                       
                                       <%
                                           
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            }
        %>
                                             
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [ Contextual-table ] end -->

                <!-- Required Js -->
                <script src="assets2/js/vendor-all.min.js"></script>
                <script src="assets2/js/plugins/bootstrap.min.js"></script>
                <script src="assets2/js/pcoded.min.js"></script>



</body>

</html>
