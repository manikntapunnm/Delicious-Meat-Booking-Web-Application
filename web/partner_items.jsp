<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>D-LICIOUS | My bookings</title>
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
                                <h5 class="m-b-10">My Bookings</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- [ breadcrumb ] end -->
            <!-- [ Main Content ] start -->
          <style>
                                    .hover-zoom {
    transition: transform 0.3s ease; /* Add a smooth transition for the zoom effect */
}

.hover-zoom:hover {
    transform: scale(5); /* Scale the image up to three times its original size on hover */
}



.emoji-cell {
    cursor: pointer;
    position: relative;
}

.emoji-symbol .emoji {
    position: absolute;
    top: 0;
    left: 0;
    transform: scale(1); /* Initial size */
    opacity: 0; /* Hidden by default */
    transition: transform 0.3s ease-in-out, opacity 0.3s ease-in-out; /* Add smooth zoom and fade-in transitions */
}

.emoji-symbol:hover .emoji {
    transform: scale(4.5); /* Zoom the emoji up to 1.5 times its original size on hover */
    opacity: 1; /* Fade the emoji in on hover */
}

.emoji-symbol .text {
    display: block;
}

.emoji-symbol:hover .text {
    display: none; /* Hide the text on hover */
}



                                </style>
   

                   <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>

<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>
                      <%
                           Connection connection = new Dbconn.dbconn().getConnection();
                          int recordsPerPage = 5;
    // 'Accepted' Pagination
     int totalAcceptedRecords = 0;
    int currentPageAccepted = (request.getParameter("page_accepted") != null) ? Integer.parseInt(request.getParameter("page_accepted")) : 1;
int startRecordAccepted = Math.max((currentPageAccepted - 1) * recordsPerPage, 0);


    PreparedStatement acceptedCountStatement = connection.prepareStatement(
        "SELECT COUNT(*) FROM items1 WHERE Item_status = 'Accepted'");
    ResultSet acceptedCountResult = acceptedCountStatement.executeQuery();
    
    if (acceptedCountResult.next()) {
        totalAcceptedRecords = acceptedCountResult.getInt(1);
    }
    
    acceptedCountResult.close();
    acceptedCountStatement.close();
%>                              

            <%
   String email = (String) session.getAttribute("email");
out.println(email);
 String partnerId2 = (String) session.getAttribute("partner_id");
    out.println(partnerId2);
session.setAttribute("partner_id", partnerId2);

String subquery = "SELECT item_id FROM partneritems WHERE partner_id = ?";

PreparedStatement acceptedStatement = connection.prepareStatement(
    "SELECT i.*,p.* " +
    "FROM items1 i " +
    "INNER JOIN partneritems p ON i.item_id = p.item_id " +
    "WHERE i.Item_status = 'Accepted' AND p.partner_id = ? " +
    "ORDER BY i.item_id DESC LIMIT ?, ?"
);

    // Set parameters for 'Accepted' items query
    acceptedStatement.setString(1, partnerId2);
    acceptedStatement.setInt(2, startRecordAccepted);
    acceptedStatement.setInt(3, recordsPerPage);

    ResultSet acceptedResultSet = acceptedStatement.executeQuery();

    int ASno = startRecordAccepted + 1;
%>

<div class="row">
    <!-- [ basic-table ] start -->
    <!-- [ Contextual-table ] start -->
    <div class="col-md-12">
        <div class="btn btn-primary">Accepted Items</div>
        <div class="card">
            <div class="card-body table-border-style">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th>Item</th>
                                <th>Item Name</th>
                                <th>Price</th>
                                <th>Quantity in KG</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%  
                               while (acceptedResultSet.next()) {
                                    byte[] ImageBytes = acceptedResultSet.getBytes("item_image");
                                    String ImageBase64 = Base64.encodeBase64String(ImageBytes);
                                 
                                    String price = acceptedResultSet.getString("price");
                                    String quantity = acceptedResultSet.getString("quantity");
                                    String action = acceptedResultSet.getString("Item_status");
                                    String aid = acceptedResultSet.getString("Item_id");
                                     session.setAttribute("itemid2",aid);
                                    String Name = acceptedResultSet.getString("item_name");
                                    session.setAttribute("itemname2",Name);// Change to Item_status
                                    String category = acceptedResultSet.getString("category");
                            %>
                            <tr class="table-active">
                                <td><%= ASno++ %></td>
                                <td><img src="data:image/jpeg;base64,<%= ImageBase64 %>" alt="user image" class="img-radius wid-40 align-top m-r-10 hover-zoom"></td>
                                <td><%= Name %></td>
                                <td><%= price %> &#8377;</td>
                                <td><%= quantity %></td>
                           <td class="emoji-cell ">
    <%-- String action = pendingResultSet.getString("item_status"); --%>
    <span class="emoji-symbol ">
        <span class="emoji ">
            <!-- Emoji characters go here -->
            <% if (action.equalsIgnoreCase("Accepted")) { %>
                &#128077; <!-- Smiley face emoji for "Accepted" -->
            <% } else if (action.equalsIgnoreCase("Pending")) { %>
                &#x1F914; <!-- Thumbs up emoji for "Pending" -->
            <% } else if (action.equalsIgnoreCase("Rejected")) { %>
                &#128078; <!-- Thumbs down emoji for "Rejected" -->
            <% } %>
        </span>
        <span class="text" style="color:
            <% if (action.equalsIgnoreCase("Pending")) {
                out.print("blue");
            } else if (action.equalsIgnoreCase("Accepted")) {
                out.print("green");
            } else if (action.equalsIgnoreCase("Rejected")) {
                out.print("red");
            } else {
                out.print("black"); // Default color if status doesn't match any condition
            }
            %>
            ">
            <%= action %>
        </span>
    </span>
</td>
                                    <td >
    <div class="btn-group">
   <form action="item-action_1.jsp?itemname=<%= session.getAttribute("itemname2") %>&itemid=<%= session.getAttribute("itemid2") %>&category=<%=category%>" method="post">
        <input type="hidden" name="email" value="<%= session.getAttribute("email") %>">
        <input type="hidden" name="newstatus" value="Rejected">
        <button type="submit" class="btn-xs btn-danger">Reject</button>
    </form>
</div>

</td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                        
                         <nav aria-label="Page navigation example">
        <ul class="pagination">
            <li class="page-item <%= (currentPageAccepted == 1) ? "disabled" : "" %>">
                <a class="page-link" href="#" onclick="previousPageAccepted()">Previous</a>
            </li>

            <% 
            int totalPagesAccepted = (int) Math.ceil((double) totalAcceptedRecords / recordsPerPage);
            for (int i = 1; i <= totalPagesAccepted; i++) { 
            %>
                <li class="page-item <%= (i == currentPageAccepted) ? "active" : "" %>">
                    <a class="page-link" href="?page_accepted=<%= i %>"><%= i %></a>
                </li>
            <% } %>

            <li class="page-item <%= (currentPageAccepted == totalPagesAccepted) ? "disabled" : "" %>">
                <a class="page-link" href="#" onclick="nextPageAccepted()">Next</a>
            </li>
        </ul>
    </nav>
                <script>
        // Function to record scroll position and store it in localStorage for Accepted pagination
        function recordScrollPositionAccepted() {
            var scrollY = window.scrollY || window.pageYOffset;
            localStorage.setItem("scrollPositionAccepted", scrollY);
        }

        // Function to restore scroll position from localStorage for Accepted pagination
        function restoreScrollPositionAccepted() {
            var scrollPositionAccepted = localStorage.getItem("scrollPositionAccepted");
            if (scrollPositionAccepted !== null) {
                window.scrollTo(0, parseInt(scrollPositionAccepted));
            }
        }

        // Function to navigate to the previous page for Accepted pagination
        function previousPageAccepted() {
            recordScrollPositionAccepted();
            var currentPage = <%= currentPageAccepted %>;
            if (currentPage > 1) {
                location.href = "?page_accepted=" + (currentPage - 1);
            }
        }

        // Function to navigate to the next page for Accepted pagination
        function nextPageAccepted() {
            recordScrollPositionAccepted();
            var currentPage = <%= currentPageAccepted %>;
            var totalPages = <%= totalPagesAccepted %>;
            if (currentPage < totalPages) {
                location.href = "?page_accepted=" + (currentPage + 1);
            }
        }

        // When the page loads, restore the scroll position for Accepted pagination
        window.onload = restoreScrollPositionAccepted;
    </script>
                        
                        
                </div>
 
            </div>

        </div>
                        
    </div>
                        
                         
</div>
            <!-- [ Main Content ] end -->
        </div>
    </section>
    <!-- Required Js -->
    <script src="assets2/js/vendor-all.min.js"></script>
    <script src="assets2/js/plugins/bootstrap.min.js"></script>
    <script src="assets2/js/pcoded.min.js"></script>



</body>

</html>
