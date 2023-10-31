<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>D-LICIOUS | All_Partners</title>
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
    
    
    


</head>

<body class="">
   
    <div class="loader-bg">
        <div class="loader-track">
            <div class="loader-fill"></div>
        </div>
    </div>
    <!-- [ Pre-loader ] End -->
    <!-- [ navigation menu ] start -->
    <nav class="pcoded-navbar" style="position:fixed;">
        <div class="navbar-wrapper">
            <div class="navbar-content scroll-div ">

                <div class="">
                    <div class="main-menu-header">
                        <img class="img-radius" src="assets/images/user/avatar-2.jpg" alt="User-Profile-Image">
                        <div class="user-details">
                            <span>Admin</span>
                            <div id="more-details">DashBoard<i class="fa fa-chevron-down m-l-5"></i></div>
                        </div>
                    </div>
                    <div class="collapse" id="nav-user-link">
                        <ul class="list-unstyled">
                            <li class="list-group-item"><a href="user-profile.jsp"><i
                                        class="feather icon-user m-r-5"></i>View Profile</a></li>
                            <li class="list-group-item"><a href="#!"><i
                                        class="feather icon-settings m-r-5"></i>Settings</a></li>
                            <li class="list-group-item"><a href="index.jsp"><i
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
                            <!--li><a href="sentimental_graph.jsp">Sentiment Graph</a></li-->
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
                                <li><a href="user-profile.jsp" class="dropdown-item"><i class="feather icon-user"></i>
                                        Profile</a></li>
                                <li><a href="login.jsp" class="dropdown-item"><i class="feather icon-lock"></i>
                                        Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>


    </header>
  <style>
        /* Style for the container */
        .container {
            height: 500px; /* Set your desired height here */
            overflow-y: auto; /* Add a vertical scrollbar when content overflows */
            border: 1px solid #ccc; /* Optional: Add a border for the container */
        }
        
        /* Optional: Style for the content inside the container */
        .content {
            padding: 10px;
        }
    </style>
    <!-- [ Header ] end -->
 <p>${sessionScope.Email}</p>
<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>

<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>

    <!-- [ Main Content ] start -->
    <div class="pcoded-main-container py-5">
        <div class="pcoded-content">
          
<div class="col-md-12">
    <div class="card table-card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-8">
                    <h5 class="text-danger">All Items</h5>
                </div>
                <div class="col-md-4">
                    <!-- Dropdown Select and Filter Button -->
                    <div class="form-group row">
                        <div class="col-md-7">
                          <select class="form-control" id="categoryDropdown">
                              <option >All Categories</option>
            <% 
                try {
                    Connection conn = new Dbconn.dbconn().getConnection();
                    String sql = "SELECT  DISTINCT  category FROM items1";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    ResultSet resultSet = statement.executeQuery();
                    Set<String> uniqueCategories = new HashSet<>();
                    while (resultSet.next()) {
                        String categoryName = resultSet.getString("category");
                        if (!uniqueCategories.contains(categoryName)) {
                            uniqueCategories.add(categoryName);
            %>
                            <option value="<%= categoryName %>"><%= categoryName %></option>
            <%
                        }
                    }
                    resultSet.close();
                    statement.close();
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </select>

                                                       
                            
                        </div>
                        <div class="col-md-4">
                            <button class="btn btn-primary" id="filterButton">Filter</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



                    
                    
                        <div class=" col-md-12 container">
                <div class="card table-card content">
                    
                             

            <%
//                int recordsPerPage = 6; // Number of records to display per page
//int currentPage = (request.getParameter("page") != null) ? Integer.parseInt(request.getParameter("page")) : 1;
//
//int startRecord = Math.max((currentPage - 1) * recordsPerPage, 0);
//
//                

//String status = request.getParameter("status");

try {
    // Get database connection
    Connection connection = new Dbconn.dbconn().getConnection();
int totalRecords = 0;
    PreparedStatement countStatement = connection.prepareStatement(
        "SELECT COUNT(*) FROM items1");
   
    ResultSet countResult = countStatement.executeQuery();
    
    if (countResult.next()) {
        totalRecords = countResult.getInt(1);
    }
    
    countResult.close();
    countStatement.close();


 //PreparedStatement statement = connection.prepareStatement("SELECT * FROM partners  LIMIT ?, ?");
 PreparedStatement statement = connection.prepareStatement("SELECT * FROM items1 ORDER BY item_id DESC");

//    
//    statement.setInt(1, startRecord);
//statement.setInt(2, recordsPerPage);
ResultSet resultSet = statement.executeQuery();
//     int sno = startRecord + 1; 
     // statement.setString(2, status);
  %>
  
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0">
                                  
                                <thead>
                                    <tr>
                                        <th>S.No</th>
                                        <th>IMAGE</th>
                                        <th>Quantity</th>
                                        <th>Price</th>
                                        <th>Discount</th>
                                        <th>Description</th>
                                        <th>Status</th><!--
                                        <th class="text-center">Action</th>-->
                                    </tr>
                                </thead>
                                <tbody>
                                                          <%  
    
    int Sno = 1; // Counter for serial number
    while (resultSet.next()) {
        
        byte[] ImageBytes = resultSet.getBytes("item_image");
         String ImageBase64 = Base64.encodeBase64String(ImageBytes);
//String companyImageBase64 = new String(Base64.getEncoder().encode(companyImageBytes));
        String Name = resultSet.getString("item_name");
        String price = resultSet.getString("price");
        String discount = resultSet.getString("discount");
        // session.setAttribute("Email",Email);
         String category = resultSet.getString("category");
          String quantity = resultSet.getString("quantity");
        //  String Status = resultSet.getString("partstatus");
        String discription = resultSet.getString("description");
//        String status = resultSet.getString("item_status");
      
        
        %>  
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
                                
  


                                    <tr class="item-row" data-category="<%= resultSet.getString("category") %>">
                                        <td><%= Sno++ %></td>
                                        <td>
                                            <div class="d-inline-block align-middle">
                                               <img src="data:image/jpeg;base64,<%= ImageBase64 %>" alt="user image"
     class="img-radius wid-40 align-top m-r-10 hover-zoom">

                                                <div class="d-inline-block">
                                                    <h6><%= category %></h6>
                                                    <p class="text-muted m-b-0"><%= Name %></p>
                                                </div>
                                            </div>
                                        </td>
                                         <td> <%= quantity %>KG</td>
                                        <td ><%= price %> &#8377</td>
                                        <td><%= discount %> &#x0025</td>
                                        <td><textarea rows="2" cols="20"><%= discription %></textarea></td>
                                         
                                        
<td class="emoji-cell ">
    <% String action = resultSet.getString("item_status"); %>
    <span class="emoji-symbol ">
        <span class="emoji ">
            <!-- Emoji characters go here -->
            <% if (action.equalsIgnoreCase("Accepted")) { %>
                &#128515; <!-- Smiley face emoji for "Accepted" -->
            <% } else if (action.equalsIgnoreCase("Pending")) { %>
                &#128077; <!-- Thumbs up emoji for "Pending" -->
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



                                                    
                                                    
                                                    
                                                    
                                          
<!--                                   <td class="text-center">
    <div class="btn-group">
        <form action="update-status_1.jsp" method="post">
            <input type="hidden" name="email" value="${sessionScope.Email}">
            <input type="hidden" name="newstatus" value="Accepted">
            <button type="submit" class="btn-xs btn-success">Accept</button>
        </form>
        &nbsp;&nbsp;
        <form action="update-status_1.jsp" method="post">
            <input type="hidden" name="email" value="${sessionScope.Email}">
            <input type="hidden" name="newstatus" value="Rejected">
            <button type="submit" class="btn-xs btn-danger">Reject</button>
        </form>
    </div>
</td>-->

                                    </tr>
                                   
                                    
                                    <%
                                        }
                                        %>
                                </tbody>
                            </table>
<%--                                 <nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="?page=<%= currentPage - 1 %>" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only"></span>
      </a>
    </li>
    <% for (int i = 1; i <= Math.ceil((double) totalRecords / recordsPerPage); i++) { %>
      <li class="page-item <%= (i == currentPage) ? "active" : "" %>">
        <a class="page-link" href="?page=<%= i %>"><%= i %></a>
      </li>
    <% } %>
    <li class="page-item">
      <a class="page-link" href="?page=<%= currentPage + 1 %>" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only"></span>
      </a>
    </li>
  </ul>
</nav>--%>
                                
                                
                                 <%
   
    resultSet.close();
    statement.close();
    
    // Close database connection
    connection.close();
} catch (Exception e) {
    // Handle any exceptions
    out.print(e);
}
%>
                    
                    
                    
                    
                    
          <script>
        document.getElementById("filterButton").addEventListener("click", function() {
            var selectedCategory = document.getElementById("categoryDropdown").value;
            
            // Use JavaScript to filter items based on the selectedCategory
            var items = document.querySelectorAll(".item-row");
            
            items.forEach(function(item) {
                if (selectedCategory === "all" || item.getAttribute("data-category") === selectedCategory) {
                    item.style.display = "table-row";
                } else {
                    item.style.display = "none";
                }
            });
        });
    </script>      
                    
                    
                </div>
            </div>
        </div>
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
