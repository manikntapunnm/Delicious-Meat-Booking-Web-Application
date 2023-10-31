<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>D-LICIOUS | Pending_partners</title>

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
     
            <div class=" col-md-12 py-5">
                <div class="card table-card">
                    <div class="card-header">
                        <h5 class="text-danger">Add Item</h5>

                    </div>
                <div class="card-body p-0">
                        <div class="table-responsive">
                         
                  </div>
                </div>
                       
                </div>
              <div class="card table-card">
               <div class="card-body p-0">
                        <div class="table-responsive">
                            

<div class="row">
    <div class="d-flex justify-content-center align-items-center p-4">
        <form action="add-item-action.jsp" method="post" enctype="multipart/form-data" style="border: 2px solid #ccc; max-width: 500px; padding: 20px; border-radius: 30px 30px 30px 30px;">

<div class="row">
    <div class="col-md-6">
        <div class="mb-3">
            <label for="itemName" class="form-label">Item Name</label>
            <input type="text" class="form-control" id="itemName" name="itemName" style="border-radius: 10px 10px 10px 10px;" required>
        </div>
    </div>
    <div class="col-md-6">
       
        <div class="mb-3">
    <label for="category" class="form-label">Category</label>
    <select class="form-control" id="category" name="category" style="border-radius: 10px 10px 10px 10px;" required>
        <option value="">Meat Category</option>
        <option value="freshmeat">Freshmeat</option>
        <option value="Chicken">Chicken</option>
        <option value="fish">Fish</option>
        <option value="mutton">Mutton</option>
        <option value="Pork">Pork</option>
        <option value="crab">Crab</option>
        <option value="prawns">Prawns</option>
        <option value="Beef">Beef</option>
        <option value="Other">Other</option>
    </select>
</div>
    </div>
</div>
 
            <div class="mb-3">
                <label for="Description" class="form-label">Description</label>
                <textarea rows="3" cols="50"  class="form-control" id="description" name="description" style="border-radius: 10px 10px 10px 10px;" required></textarea>
            </div>

         <div class="row">
    <div class="col-md-4">
        <div class="mb-3">
            <label for="price" class="form-label">Price</label>
            <input type="number" class="form-control" id="price" name="price" style="border-radius: 10px 10px 10px 10px;" required>
        </div>
    </div>
    <div class="col-md-4">
        <div class="mb-3">
            <label for="discount" class="form-label">Discount</label>
            <input type="number" class="form-control" id="discount" name="discount" style="border-radius: 10px 10px 10px 10px;" required>
        </div>
        
       
    </div>
        <div class="col-md-4">
                    <div class="mb-3">
                        <label for="quantity" class="form-label">Quantity</label>
                        <input type="number" class="form-control" id="quantity" name="quantity" style="border-radius: 10px 10px 10px 10px;" required>
                    </div>
                </div>

</div>

            <div class="mb-3">
                <label for="itemImage" class="form-label">Item Image</label>
                <input type="file" class="form-control" id="itemImage" name="itemImage" onchange="previewImage(this)" style="border-radius: 10px 10px 10px 10px;" required>
            </div>


              <div class="d-flex justify-content-end">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
        </form>

        <div class="d-flex justify-content-center align-items-center p-4">
    <div id="imagePreview" style="max-height: 500px; max-width: 500px;border: 2px solid #ccc;padding: 20px;border-radius: 30px 30px 30px 30px; background-image: url('your-image-url.jpg'); background-size: contain; background-repeat: no-repeat; background-position: center;"></div>
</div>                              
    </div>

</div>

                            
                            
                            
                            
                            
                            
                            
                            

<!-- JavaScript to display image preview -->
<script>
function previewImage(input) {
    const imagePreview = document.getElementById("imagePreview");
    imagePreview.innerHTML = ""; // Clear previous previews

    if (input.files && input.files[0]) {
        const reader = new FileReader();

        reader.onload = function (e) {
            const img = document.createElement("img");
            img.setAttribute("src", e.target.result);
            img.setAttribute("style", "max-width: 100%; max-height: 100%;");
            imagePreview.appendChild(img);
        };

        reader.readAsDataURL(input.files[0]);
    }
}
</script>





                        </div>
                        
                    
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
