<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>D-LICIOUS | Home</title>

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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">
</head>

<body>
    
                <%
String login = (String) session.getAttribute("login");
if (login != null) {
    // Clear the message attribute to prevent repeated display
    session.removeAttribute("login");
%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <script>
        Swal.fire({
            icon: '<%= "Success".equals(login) ? "success" : "error" %>',
            title: 'Login',
            text: '<%= login %>',
            timer: 1000, // Auto-close the dialog after 3 seconds
            //timerProgressBar: true,
            showConfirmButton: false
        })
    </script>
<%
}
%>

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
    

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="py-2">
            <a href="customer_dashboard.jsp?email=${sessionScope.email}">
                <h2><b class="text-danger">D</b>-<b class="text-primary">L</b>&nbsp;<b
                        class="text-secondary">I</b>&nbsp;<b class="text-success">C</b>&nbsp;<b
                        class="text-warning">I</b>&nbsp;<b class="text-info">O</b>&nbsp;<b
                        class="text-danger">U</b>&nbsp;<b class="text-dark">S</b>
            </a></h2>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="customer_dashboard.jsp?email=${sessionScope.email}">Home</a></li>
                <li><a href="customer_account.jsp?email=${sessionScope.email}">My Account</a></li>
                <li><a href="customer_mybookings.jsp?email=${sessionScope.email}">My Bookings</a></li>
                <li><a href="customer-cart.jsp?email=${sessionScope.email}"><span><i class="bi bi-cart-check"></i></span>Cart </a></li>
                <li><a href="index.jsp?email=${sessionScope.email}">Logout</a></li>
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
                        <a href="customer_dashboard.jsp?email=${sessionScope.email}">
                            <h2><b class="text-danger">D</b>-<b class="text-primary">L</b>&nbsp;<b
                                    class="text-secondary">I</b>&nbsp;<b class="text-success">C</b>&nbsp;<b
                                    class="text-warning">I</b>&nbsp;<b class="text-info">O</b>&nbsp;<b
                                    class="text-danger">U</b>&nbsp;<b class="text-dark">S</b>
                        </a></h2>
                    </div>
                </div>
                <div class=" col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <!-- <li class="active"><a href="">Login</a></li> -->
                            <li class="active"><a href="customer_dashboard.jsp?email=${sessionScope.email}">Home</a></li>
                            <li><a href="customer_account.jsp?email=${sessionScope.email}">My Account</a></li>
                            <li><a href="customer_mybookings.jsp?email=${sessionScope.email}">My Bookings</a></li>
                            <li><a href="customer-cart.jsp?email=${sessionScope.email}"><span><i class="bi bi-cart-check"></i></span>Cart </a></li>
                            <li><a href="index.jsp?email=${sessionScope.email}">Logout</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-2">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="customer-cart.jsp?email=${sessionScope.email}"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        
                    </div>
                </div>
            </div>

            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
  <p>${sessionScope.email}</p>
    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
<!--                        <ul style="list-style-type: none;" class="py-5 px-5">
                            <li class="py-1"><a href="freshmeat.jsp?email=${sessionScope.email}" class="text-dark active">Fresh Meat</a></li>
                            <li class="py-1"><a href="chicken.jsp?email=${sessionScope.email}" class="text-dark">Chicken</a></li>
                            <li class="py-1"><a href="fish.jsp?email=${sessionScope.email}" class="text-dark">Fish</a></li>
                            <li class="py-1"><a href="mutton.jsp?email=${sessionScope.email}" class="text-dark">Mutton</a></li>
                            <li class="py-1"><a href="prawns.jsp?email=${sessionScope.email}" class="text-dark">Prawns</a></li>
                            <li class="py-1"><a href="eggs.jsp?email=${sessionScope.email}" class="text-dark">Eggs</a></li>
                            <li class="py-1"><a href="seafood.jsp?email=${sessionScope.email}" class="text-dark">Seafood</a></li>
                            <li class="py-1"><a href="Beef.jsp?email=${sessionScope.email}" class="text-dark">Beef</a></li>
                        </ul>-->
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
                    <div class="hero__item set-bg"
                        data-setbg="https://img.freepik.com/free-photo/top-view-raw-fresh-red-meat-salt-green-bundle-knife-cutting-board-left-side-green-black-mix-colors-background_179666-47200.jpg">
                        <div class="hero__text">
                            <span>FRESH</span>
                            <h2>MEAT <br>100% Organic</h2>
                            <p>Free Pickup and Delivery Available</p>
                            <a href="freshmeat.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com" class="primary-btn">SHOP NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg"
                            data-setbg="https://thumbs.dreamstime.com/b/fresh-raw-Beef-steak-isolated-white-background-large-piece-buffalo-meat-filet-closeup-fresh-raw-Beef-steak-isolated-white-158842148.jpg">
                            <h5><a href="freshmeat.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com">Fresh Meat</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg"
                            data-setbg="https://cdn.shopify.com/s/files/1/0250/6683/1958/products/ORpinks_HC_1_0_jpg_1000x1000.jpg?v=1617998922">
                            <h5><a href="prawns.jsp?email=${sessionScope.email}">Prawns</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg"
                            data-setbg="https://hips.hearstapps.com/hmg-prod/images/high-angle-view-of-meat-on-white-background-royalty-free-image-1126384991-1552943325.jpg?crop=1xw:1xh;center,top&resize=480:*">
                            <h5><a href="chicken.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com">Chicken</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg"
                            data-setbg="https://static.vecteezy.com/system/resources/previews/004/800/892/large_2x/raw-tilapia-fillet-fish-isolated-on-white-background-for-cooking-food-fresh-fish-fillet-sliced-for-steak-or-salad-free-photo.JPG">
                            <h5><a href="fish.jsp?email=${sessionScope.email}">Fish</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg"
                            data-setbg="https://thumbs.dreamstime.com/b/raw-lamb-leg-raw-lamb-leg-isolated-white-background-111007882.jpg">
                            <h5><a href="mutton.jsp?email=${sessionScope.email}">Mutton</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Featured Product</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            <li data-filter=".oranges">Meat</li>
                            <li data-filter=".fresh-meat">Chicken</li>
                            <li data-filter=".vegetables">Sea Food</li>
                            <li data-filter=".fastfood">Mutton</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://media.istockphoto.com/photos/grilled-chicken-breast-and-vegetables-picture-id1056419208?k=20&m=1056419208&s=612x612&w=0&h=a5Vc73iCNe6aMj__YUrCADRUBBhE-qB_uR0C_FQwoEA=">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="chicken.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com">Chicken</a></h6>
                            <h5>&#8377; 160</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://thumbs.dreamstime.com/b/salmon-fish-meat-isolated-white-background-140006662.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="fish.jsp?email=${sessionScope.email}">Fish</a></h6>
                            <h5>&#8377; 180</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://previews.123rf.com/images/kolesnikovserg/kolesnikovserg1906/kolesnikovserg190600212/124941512-sliced-raw-pork-meat-isolated-on-white-background.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="freshmeat.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com">Meat</a></h6>
                            <h5>&#8377; 200</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://static.vecteezy.com/system/resources/previews/005/930/375/large_2x/raw-chicken-meat-with-rosemary-and-lemon-fresh-raw-chicken-breast-heart-shaped-fillet-on-white-plate-free-photo.JPG">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="chicken.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com">Beast Chicken</a></h6>
                            <h5>&#8377; 200</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://media.istockphoto.com/photos/cooked-shrimps-plate-on-white-background-picture-id805011842">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="prawns.jsp?email=${sessionScope.email}">Prawns</a></h6>
                            <h5>&#8377; 200</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://previews.123rf.com/images/ange1011/ange10111911/ange1011191100383/134096481-fresh-raw-mutton-shoulder-meat-with-bone-isolated-on-white-background-top-view-large-piece-of-sheep-.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="mutton.jsp?email=${sessionScope.email}">Mutton</a></h6>
                            <h5>&#8377; 600</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://thumbs.dreamstime.com/b/fresh-lamb-chops-against-white-background-195009164.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="mutton.jsp?email=${sessionScope.email}">Mutton</a></h6>
                            <h5>&#8377; 700</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://image.shutterstock.com/image-photo/grilled-burger-Beef-meat-isolated-260nw-1518276251.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="freshmeat.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com">Meat Box</a></h6>
                            <h5>&#8377; 300</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://media.gettyimages.com/photos/steak-on-a-white-plate-picture-id596443642?s=612x612">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="freshmeat.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com">Meat</a></h6>
                            <h5>&#8377; 500</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuGnotVNtzCKgHjsOgTdj0g5knZ7YkxoP5Wg&usqp=CAU">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="fish.jsp?email=${sessionScope.email}">Fish</a></h6>
                            <h5>&#8377; 300</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://img.freepik.com/premium-photo/chicken-meat-white-background_181303-1986.jpg?w=2000">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="chicken.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com">Chicken legs</a></h6>
                            <h5>&#8377; 200</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://img.freepik.com/premium-photo/circle-serving-meat-Beef-pieces-isolate-white-background-ball-is-red-meat-insert-it-into-layout-with-plate-delicious-raw-pork_114160-1442.jpg?w=2000">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="freshmeat.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com">Meat</a></h6>
                            <h5>&#8377; 400</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://hips.hearstapps.com/hmg-prod/images/gettyimages-596443642-1560532197.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="mutton.jsp?email=${sessionScope.email}">Mutton</a></h6>
                            <h5>&#8377; 600</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://thumbs.dreamstime.com/b/plate-grilled-chicken-vegetables-isolated-white-background-plate-grilled-chicken-vegetables-white-background-174389617.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="chicken.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com">Chicken</a></h6>
                            <h5>&#8377; 300</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://img.freepik.com/premium-photo/red-perch-fish-meat-set-wooden-serving-board-white-stone-table-background-top-view-flat-lay_249006-16228.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="fish.jsp?email=${sessionScope.email}">Fish</a></h6>
                            <h5>&#8377; 200</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg"
                            data-setbg="https://img.lovepik.com/free-png/20211201/lovepik-raw-mutton-roll-png-image_401238487_wh1200.png">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="mutton.jsp?email=${sessionScope.email}">Mutton Roll</a></h6>
                            <h5>&#8377; 600</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Featured Section End -->
    <!-- Latest Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Latest Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="freshmeat.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://previews.123rf.com/images/popovaphoto/popovaphoto1511/popovaphoto151100020/48117088-fresh-raw-meat-of-a-leg-young-lamb-on-white-background.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Meat</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="fish.jsp?email=${sessionScope.email}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://img.freepik.com/premium-photo/red-perch-fish-meat-set-wooden-serving-board-white-stone-table-background-top-view-flat-lay_249006-16228.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>fish</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="chicken.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://avectime.com/home_kitchen/kitchen_dining/brands/images/related_image/fresh_chicken_meat1.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Chicken legs</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="mutton.jsp?email=${sessionScope.email}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://www.kindpng.com/picc/m/15-151813_lamb-and-mutton-meat-png-transparent-png.png"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>mutton</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="freshmeat.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://i.pinimg.com/originals/50/74/73/50747357110946d14e7defb4cf6bc478.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Meat</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="chicken.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://img.freepik.com/premium-photo/chicken-meat-white-background_181303-1986.jpg?w=2000"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Chicken</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Top Rated Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="chicken.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://img.freepik.com/premium-photo/chicken-meat-white-background_181303-1986.jpg?w=2000"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Chicken</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="prawns.jsp?email=${sessionScope.email}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://previews.123rf.com/images/gbh007/gbh0071402/gbh007140200050/25665763-fresh-raw-pork-on-white-background.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Prawns</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="freshmeat.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://image.shutterstock.com/image-photo/grilled-burger-Beef-meat-isolated-260nw-1518276251.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Beef Meat</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="chicken.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://previews.123rf.com/images/dulsita/dulsita1307/dulsita130700068/21201847-pieces-of-raw-chicken-meat.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Raw chicken</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="fish.jsp?email=${sessionScope.email}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://thumbs.dreamstime.com/b/salmon-fish-meat-isolated-white-background-140006662.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Salmon Fish</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="freshmeat.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://previews.123rf.com/images/kolesnikovserg/kolesnikovserg1906/kolesnikovserg190600212/124941512-sliced-raw-pork-meat-isolated-on-white-background.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Raw Meat</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Review Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="freshmeat.jsp?email=${sessionScope.email}?email=durgamanikya@gmail.com" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://thumbs.dreamstime.com/b/raw-Beef-leg-white-background-34605327.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Raw Beef</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="mutton.jsp?email=${sessionScope.email}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://www.pngitem.com/pimgs/m/15-151970_lamb-and-mutton-meat-png-transparent-png.png"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Mutton</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="mutton.jsp?email=${sessionScope.email}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://w7.pngwing.com/pngs/709/408/png-transparent-raw-foodism-lamb-and-mutton-meat-chop-barbecue-meat-food-Beef-cooking.png"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Mutton meat</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="prawns.jsp?email=${sessionScope.email}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://previews.123rf.com/images/topntp/topntp1605/topntp160503323/56998731-fresh-shrimp-prawn-on-white-plate.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6> Fresh prawns</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="prawns.jsp?email=${sessionScope.email}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://previews.123rf.com/images/magone/magone1609/magone160900005/63582925-roasted-prawns-on-white-plate-top-view-isolated-on-white-background.jpg"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Prawns</h6>
                                        <span>&#8377; 30.00</span>
                                    </div>
                                </a>
                                <a href="fish.jsp?email=${sessionScope.email}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="https://us.123rf.com/450wm/gsdesign/gsdesign1710/gsdesign171000251/88237258-raw-sliced-mackerel-isolated-on-white-background.jpg?ver=6"
                                            alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Fish Pieces</h6>
                                        <span>&#8377;30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Product Section End -->

    <!-- Blog Section Begin -->
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>From The Blog</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="https://www.thegrove.co.uk/wp-content/uploads/2022/03/shutterstock_2062793909-1024x681.jpg"
                                alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">Cooking tips make cooking simple</a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="https://img.freepik.com/premium-photo/fresh-dorado-fish-cooking-with-spices-condiments_522560-1161.jpg?w=2000"
                                alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">6 ways to prepare breakfast for 30</a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/blog/blog-3.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">Visit the clean farm in the US</a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <a href="customer_dashboard.jsp?email=${sessionScope.email}">
                                    <h3><b class="text-danger">D</b>-<b class="text-primary">L</b>&nbsp;<b
                                            class="text-secondary">I</b>&nbsp;<b class="text-success">C</b>&nbsp;<b
                                            class="text-warning">I</b>&nbsp;<b class="text-info">O</b>&nbsp;<b
                                            class="text-danger">U</b>&nbsp;<b class="text-dark">S</b>
                                </a></h>
                            </div>
                            <ul>
                                <li>Address: Hyderabad Telangana</li>
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
