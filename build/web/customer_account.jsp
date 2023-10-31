<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>D-LICIOUS | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link rel="icon" href="https://geo-media.beatport.com/image_size/500x500/d2dc75c2-a3b0-4b7a-ac56-85732f73b166.jpg"
        type="image/x-icon">


    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

</head>

<body>
    <!-- Page Preloder -->
  <!--   <div id="preloder">
        <div class="loader"></div>
    </div>-->

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="index.jsp">
                <h2><b class="text-danger">D</b>-<b class="text-primary">L</b>&nbsp;<b
                        class="text-secondary">I</b>&nbsp;<b class="text-success">C</b>&nbsp;<b
                        class="text-warning">I</b>&nbsp;<b class="text-info">O</b>&nbsp;<b
                        class="text-danger">U</b>&nbsp;<b class="text-dark">S</b>
            </a></h2>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li><a href="customer_dashboard.jsp">Home</a></li>
                <li class="active"><a href="customer_account.jsp">My Account</a></li>
                <li><a href="customer_mybookings.jsp">My Bookings</a></li>
                <li><a href="customer-cart.jsp"><span><i class="bi bi-cart-check"></i></span>Cart </a></li>
                <li><a href="index.jsp">Logout</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="py-3">
                        <a href="index.jsp">
                            <h2><b class="text-danger">D</b>-<b class="text-primary">L</b>&nbsp;<b
                                    class="text-secondary">I</b>&nbsp;<b class="text-success">C</b>&nbsp;<b
                                    class="text-warning">I</b>&nbsp;<b class="text-info">O</b>&nbsp;<b
                                    class="text-danger">U</b>&nbsp;<b class="text-dark">S</b>
                        </a></h2>
                    </div>
                </div>
                <div class="col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <!-- <li class="active"><a href="">Login</a></li> -->
                            <li><a href="customer_dashboard.jsp">Home</a></li>
                            <li class="active"><a href="customer_account.jsp">My Account</a></li>
                            <li><a href="customer_mybookings.jsp">My Bookings</a></li>
                            <li><a href="customer-cart.jsp"><span><i class="bi bi-cart-check"></i></span>Cart </a></li>
                            <li><a href="index.jsp">Logout</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-2">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="customer-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <!-- <div class="header__cart__price">item: <span>$150.00</span></div> -->
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
<ul style="list-style-type: none;" class="py-5 px-5">
    <li class="py-1">
        <a href="freshmeat.jsp?email=${sessionScope.email}&category=freshmeat" class="text-dark active">Fresh Meat</a>
    </li>
    <li class="py-1">
        <a href="chicken.jsp?email=${sessionScope.email}&category=chicken" class="text-dark">Chicken</a>
    </li>
    <li class="py-1">
        <a href="fish.jsp?email=${sessionScope.email}&category=fish" class="text-dark">Fish</a>
    </li>
    <li class="py-1">
        <a href="mutton.jsp?email=${sessionScope.email}&category=mutton" class="text-dark">Mutton</a>
    </li>
   <li class="py-1">
        <a href="pork.jsp?email=${sessionScope.email}&category=pork" class="text-dark">Pork</a>
    </li>
    <li class="py-1">
        <a href="pork.jsp?email=${sessionScope.email}&category=crab"  class="text-dark">Crabs</a>
    </li>
    <li class="py-1">
        <a href="prawns.jsp?email=${sessionScope.email}&category=prawns" class="text-dark">Prawns</a>
    </li>
    
<li class="py-1">
        <a href="Beef.jsp?email=${sessionScope.email}&category=Beef" class="text-dark">Beef</a>
    </li>
</ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <!-- <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div> -->
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg"
        data-setbg="https://stylesatlife.com/wp-content/uploads/2022/03/Pork.jpg.webp">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Account</h2>
                        <div class="breadcrumb__option">
                            <a href="index.jsp">Home</a>
                            <span>Customer Account</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Contact Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Update Profile</h2>
                    </div>
                </div>
            </div>
            
            
                        <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
                        <%

String email = (String) session.getAttribute("email");

            session.setAttribute("email", email);
// //out.println(email);
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = new Dbconn.dbconn().getConnection();

    // Retrieve the image from the appropriate table
    String sql = "SELECT * FROM customers    where email=?" ;
    PreparedStatement statement = connection.prepareStatement(sql);
      statement.setString(1, email);
    ResultSet resultSet = statement.executeQuery();
   
    while (resultSet.next()) {
            byte[] ImageBytes = resultSet.getBytes("image");
         String ImageBase64 = Base64.encodeBase64String(ImageBytes);
         
%>
            <div class="container rounded bg-white mt-5 mb-5">
                <div class="row">
                    
                    
                    
                    <div class="col-md-4 border-right">                        
                          <form action="customer_account_action.jsp?email=<%=email%>" method="post" enctype="multipart/form-data">
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
                         <form action="customer_account_action.jsp?email=<%=email%>" method="post" enctype="multipart/form-data">
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
                                <div class="col-md-6"><label class="labels">City</label><input type="text"
                                        class="form-control" placeholder="City" name="city" value="<%= resultSet.getString("address") %>"></div>
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
 </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
    <!-- Contact Form End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="index.jsp">
                                <h3><b class="text-danger">D</b>-<b class="text-primary">L</b>&nbsp;<b
                                        class="text-secondary">I</b>&nbsp;<b class="text-success">C</b>&nbsp;<b
                                        class="text-warning">I</b>&nbsp;<b class="text-info">O</b>&nbsp;<b
                                        class="text-danger">U</b>&nbsp;<b class="text-dark">S</b>
                            </a></h>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@codebook.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                                template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
                                    href="https://www.codebook.in/" target="_blank" class="text-danger">Codebook</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>

</html>
