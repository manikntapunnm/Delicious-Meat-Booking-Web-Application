<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>D-LICIOUS | Partner register</title>

    <!-- Google Font -->
    <link rel="icon" href="https://geo-media.beatport.com/image_size/500x500/d2dc75c2-a3b0-4b7a-ac56-85732f73b166.jpg"
        type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">
</head>

<body>
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
                <li><a href="index.jsp">Home</a></li>
                <li><a href="admin-login.jsp">Admin</a></li>
                <li class="active"><a href="partner-login.jsp">Partner</a></li>
                <li><a href="customer-login.jsp">Customer</a></li>
                <li><a href="customer_contact.jsp">Contact</a></li>
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
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="admin-login.jsp">Admin</a></li>
                            <li class="active"><a href="partner-login.jsp">Partner</a></li>
                            <li><a href="customer-login.jsp">Customer</a></li>
                            <li><a href="customer_contact.jsp">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3    ">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
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

    <div class="contact-form spad" style="position: relative; ">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Register</h2>
                    </div>
                </div>
            </div>
            <form action="partner-register-action.jsp" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-2"></div>
                    <div class=" col-lg-4 col-md-6">
                        <input type="text" placeholder="First name" name="firstname" required>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <input type="email" placeholder="Example@gmaiil.com" name="email" required>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-lg-4 col-md-4">
                        <input type="text" placeholder="Address" name="address" required> 
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <input type="text" placeholder="State" name="state" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-lg-4 col-md-4">
                        <input type="text" placeholder="Password" name="password" required>
                    </div>
                      <div class="col-lg-4 col-md-4">
                        <input type="phone" placeholder="Phone" name="phone" required>
                    </div>
                    
                </div>
                 
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-lg-4">
                        <button type="submit" class="site-btn text-white">Register</button>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <label> Profile pic: </label> 
                        <input type="file" name="image"  style="font-weight:bold;font-size:medium;border-radius: 10px;" required >
                    </div>
                </div><br>
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-lg-6">
                        <h3>Already have an account ?<a href="partner-login.jsp" class="text-danger">login</a></h3>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Contact Form End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
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
                                    <script>document.write(new Date().getFullYear());</script> All rights reserved |
                                    This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
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
