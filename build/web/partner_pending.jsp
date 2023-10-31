<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>D-LICIOUS | Pending_partners</title>
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
    <!-- [ Header ] end -->



    <!-- [ Main Content ] start -->
    <div class="pcoded-main-container">
        <div class="pcoded-content">
            <!-- [ Main Content ] start -->

            <!-- prject ,team member start -->
            <!-- col-xl-6 -->
            <div class=" col-md-12 py-5">
                <div class="card table-card">
                    <div class="card-header">
                        <h5 class="text-danger">Pending Partners</h5>
                        <!-- <div class="btn btn-warning">Checkall</div> -->
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i
                                                    class="feather icon-maximize"></i> maximize</span><span
                                                style="display:none"><i class="feather icon-minimize"></i>
                                                Restore</span></a></li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i
                                                    class="feather icon-minus"></i> collapse</span><span
                                                style="display:none"><i class="feather icon-plus"></i> expand</span></a>
                                    </li>
                                    <li class="dropdown-item reload-card"><a href="#!"><i
                                                class="feather icon-refresh-cw"></i> reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i>
                                            remove</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    
<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>

<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>
            <%
                int recordsPerPage = 6; // Number of records to display per page
int currentPage = (request.getParameter("page") != null) ? Integer.parseInt(request.getParameter("page")) : 1;

int startRecord = Math.max((currentPage - 1) * recordsPerPage, 0);

                

//String status = request.getParameter("status");

try {
    // Get database connection
    Connection connection = new Dbconn.dbconn().getConnection();
int totalRecords = 0;
    PreparedStatement countStatement = connection.prepareStatement(
        "SELECT COUNT(*) FROM partners where partstatus='Pending' ");
   
    ResultSet countResult = countStatement.executeQuery();
    
    if (countResult.next()) {
        totalRecords = countResult.getInt(1);
    }
    
    countResult.close();
    countStatement.close();

    // Fetch job postings and related company information using JOIN
//    PreparedStatement statement = connection.prepareStatement("SELECT j.*, c.company, c.address,c.cimage, c.email FROM jobs j  INNER JOIN company c ON j.companyid = c.companyid ");
//    ResultSet resultSet = statement.executeQuery();

 PreparedStatement statement = connection.prepareStatement("SELECT * FROM partners WHERE partstatus = 'Pending' LIMIT ?, ?");
    
    statement.setInt(1, startRecord);
statement.setInt(2, recordsPerPage);
ResultSet resultSet = statement.executeQuery();
     int sno = startRecord + 1; 
     // statement.setString(2, status);
  %>
  
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0">
                                <thead>
                                    <tr>
                                        <th>S.No</th>
                                        <th>DP</th>
<!--                                        <th>Name</th>-->
                                        <th>Address</th>
                                        <th>State</th>
                                        <th>Due Date</th>
                                        <th>Status</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                                          <%  
    
    int Sno = 1; // Counter for serial number
    while (resultSet.next()) {
        
        byte[] ImageBytes = resultSet.getBytes("image");
         String ImageBase64 = Base64.encodeBase64String(ImageBytes);
//String companyImageBase64 = new String(Base64.getEncoder().encode(companyImageBytes));
        String Name = resultSet.getString("firstname");
        String Email = resultSet.getString("email");
        session.setAttribute("email", Email);
         String City = resultSet.getString("address");
          String State = resultSet.getString("state");
          //String Status = resultSet.getString("partstatus");
        String Date = resultSet.getString("date");
      
        
        %>      

                                    <tr>
                                        <td><%= Sno++ %></td>
                                        <td>
                                            <div class="d-inline-block align-middle">
                                                <img src="data:image/jpeg;base64,<%= ImageBase64 %>" alt="user image"
                                                    class="img-radius wid-40 align-top m-r-15">
                                                <div class="d-inline-block">
                                                    <h6><%= Name %></h6>
                                                    <p class="text-muted m-b-0"><%= Email %></p>
                                                </div>
                                            </div>
                                        </td>
                                        <td><%= City %></td>
                                        <td><%= State %></td>
                                        <td><%= Date%></td>
                                        <td style="color:
                                            <% String action = resultSet.getString("partstatus");
                                                if (action.equalsIgnoreCase("Pending")) {
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
                                            <%= action%>
                                        </td>

                                       
                                       
                                        <td class="text-center">
                                            <div class="btn-group">
                                                <form action="update-status.jsp" method="post">
                                                   <input type="hidden" name="email" value="<%= session.getAttribute("email") %>">

                                                    <input type="hidden" name="newstatus" value="Accepted">
                                                    <button type="submit" class="btn-xs btn-success">Accept</button>
                                                </form>
                                                &nbsp;&nbsp;
                                                <form action="update-status.jsp" method="post">
                                                                                <input type="hidden" name="email" value="<%= session.getAttribute("email") %>">
                                                    <input type="hidden" name="newstatus" value="Rejected">
                                                    <button type="submit" class="btn-xs btn-danger">Reject</button>
                                                </form>
                                            </div>
                                        </td>

                            

                                   
                                    </tr>


                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                                 <nav aria-label="Page navigation example">
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
</nav>
                                
                                
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
