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
            <a href="customer_dashboard.jsp">
                <h2><b class="text-danger">D</b>-<b class="text-primary">L</b>&nbsp;<b
                        class="text-secondary">I</b>&nbsp;<b class="text-success">C</b>&nbsp;<b
                        class="text-warning">I</b>&nbsp;<b class="text-info">O</b>&nbsp;<b
                        class="text-danger">U</b>&nbsp;<b class="text-dark">S</b>
            </a></h2>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li><a href="customer_dashboard.jsp">Home</a></li>
                <li><a href="" class="Active">My Profile</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="customer_account.jsp">Account</a></li>
                        <li><a href="customer_rewards.jsp">My Rewards</a></li>
                        <li class="active"><a href="customer_orders.jsp">My Orders</a></li>
                        <li><a href="index.jsp">Logout<span><i class="bi bi-box-arrow-right"></i></span></a></li>
                    </ul>
                </li>
                <li><a href="customer_mybookings.jsp">My Bookings</a></li>
                <li><a href="customer-cart.jsp"><span><i class="bi bi-cart-check"></i></span>Cart </a></li>
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
                        <a href="customer_dashboard.jsp">
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
                            <!-- <li class="active"><a href="">Login</a></li> -->
                            <li><a href="customer_dashboard.jsp">Home</a></li>
                            <li class="active"><a href="#">My Profile</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="customer_account.jsp">Account</a></li>
                                    <li class="active"><a href="customer_rewards.jsp">My Rewards</a></li>
                                    <li><a href="customer_orders.jsp">My Orders</a></li>
                                    <li><a href="index.jsp">Logout<span><i
                                                    class="bi bi-box-arrow-right"></i></span></a></li>
                                </ul>
                            </li>
                            <li><a href="customer_mybookings.jsp">My Bookings</a></li>
                            <li><a href="customer-cart.jsp"><span><i class="bi bi-cart-check"></i></span>Cart </a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="customer-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">item: <span>&#8377;150.00</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <section>
        <div class="contact-form spad pt-2">
            <div class="container">
                <div class="row">
                    <section class="product-details spad">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4 col-md-4">
                                    <div class="product__details__pic">
                                        <div class="product__details__pic__item">
                                            <img class="product__details__pic__item--large"
                                                src="https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/90129446_XL1_20220421.jpg"
                                                alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="product__details__text">
                                        <h3>Meat</h3>
                                        <div class="product__details__rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                            <span>(18 reviews)</span>
                                        </div>
                                        <div class="product__details__price">&#8377; 190</div>
                                        <p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac
                                            diam sit amet quam
                                            vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum
                                            ac diam sit amet
                                            quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p>
                                        <a href="#" class="primary-btn">Cancel</a>
                                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                                        <ul>
                                            <li><b>Order Status</b> <span>Picked by delivery boy</span></li>
                                            <li><b>Shipping</b> <span><samp>Delivering</samp></span></li>
                                            <li><b>Weight</b> <span>0.5 kg</span></li>
                                            <li><b>Share on</b>
                                                <div class="share">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4 col-md-4">
                                        <div class="product__details__pic">
                                            <div class="product__details__pic__item">
                                                <img class="product__details__pic__item--large"
                                                    src="https://media.istockphoto.com/photos/grilled-chicken-breast-and-vegetables-picture-id1056419208?k=20&m=1056419208&s=612x612&w=0&h=a5Vc73iCNe6aMj__YUrCADRUBBhE-qB_uR0C_FQwoEA="
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 py-4">
                                        <div class="product__details__text">
                                            <h3>Chicken</h3>
                                            <div class="product__details__rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                                <span>(17 reviews)</span>
                                            </div>
                                            <div class="product__details__price">&#8377; 210</div>
                                            <p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum
                                                ac diam sit amet quam
                                                vehicula elementum sed sit amet dui. Sed porttitor lectus nibh.
                                                Vestibulum ac diam sit amet
                                                quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p>
                                            <a href="#" class="primary-btn">Cancel</a>
                                            <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                                            <ul>
                                                <li><b>Order Status</b> <span>Preparing</span></li>
                                                <li><b>Shipping</b> <span><samp> Delvieries in 45 min</samp></span></li>
                                                <li><b>Weight</b> <span>0.5 kg</span></li>
                                                <li><b>Share on</b>
                                                    <div class="share">
                                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                                        <a href="#"><i class="fa fa-pinterest"></i></a>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
    </section>
    <!-- Contact Form End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <a href="customer_dashboard.jsp">
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
