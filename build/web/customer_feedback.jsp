<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>D-LICIOUS | Feedback</title>

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
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>

<body>
    <!-- Page Preloder -->
  <!--   <div id="preloder">
        <div class="loader"></div>
    </div>-->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="customer_dashboard.jsp">
                <h3><b class="text-danger">D</b>-<b class="text-primary">L</b>&nbsp;<b
                        class="text-secondary">I</b>&nbsp;<b class="text-success">C</b>&nbsp;<b
                        class="text-warning">I</b>&nbsp;<b class="text-info">O</b>&nbsp;<b
                        class="text-danger">U</b>&nbsp;<b class="text-dark">S</b>
            </a></h>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <l><a href="customer_dashboard.jsp">Home</a></li>
                    <li><a href="customer_account.jsp">My Account</a></li>
                    <li class="active"><a href="customer_mybookings.jsp">My Bookings</a></li>
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
                <div class="col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <!-- <li class="active"><a href="">Login</a></li> -->
                            <li><a href="customer_dashboard.jsp">Home</a></li>
                            <li><a href="customer_account.jsp">My Account</a></li>
                            <li class="active"><a href="customer_mybookings.jsp">My Bookings</a></li>
                            <li><a href="customer-cart.jsp"><span><i class="bi bi-cart-check"></i></span>Cart </a></li>
                            <li><a href="index.jsp">Logout</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-2">
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
    <!-- Contact Form Begin -->
    <section class="breadcrumb-section set-bg"
        data-setbg="https://media.istockphoto.com/photos/assortment-of-meat-and-seafood-picture-id1212824120?k=20&m=1212824120&s=612x612&w=0&h=yHkNBM-cUaMXEdVQj1GzZ_AAZ9tsV06dMuYIzcRzqbM=">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Thank you for ordering</h2>
                        <div class="breadcrumb__option">
                            <a href="customer_dashboard.jsp">Home</a>
                            <span>Feedback</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="contact-form spad">
                                                   <%
           String email = (String) session.getAttribute("email");
           String item = request.getParameter("item");
           

      //out.println(item);
  
            %>
        <div class="container py-">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Feedback</h2>
                    </div>
                </div>
            </div>
            <style>
                .star {
    font-size: 24px; /* Adjust the font-size to change the star size */
    color: grey; /* Inactive stars color */
    cursor: pointer;
}

.star.active {
    color: orange; /* Active stars color */
}

            </style>
   <form action="feedback-action.jsp" method="post">
    <div class="row">
        <div class="offset-2 col-lg-8 col-md-8 text-center">
            <textarea name="message" placeholder="Your message" required ></textarea>
            <input type="hidden" name="email" value="<%=email %>"required >
            <input type="hidden" name="item" value="<%=item %>" required>
            <input type="hidden" name="rating" value="0" required>
            <div class="product__details__rating"  >
                <i class="fa fa-star star" data-value="1"></i>
                <i class="fa fa-star star" data-value="2"></i>
                <i class="fa fa-star star" data-value="3"></i>
                <i class="fa fa-star star" data-value="4"></i>
                <i class="fa fa-star star" data-value="5"></i>
              
                <span>Ratings</span>
            </div><br>
            <button type="submit" class="site-btn">Submit</button>
        </div>
    </div>
</form>
<script>
    const stars = document.querySelectorAll('.star');
    const ratingContainer = document.querySelector('.product__details__rating');
    const ratingSpan = ratingContainer.querySelector('span');
    const ratingInput = document.querySelector('input[name="rating"]');

    stars.forEach(star => {
        star.addEventListener('click', () => {
            const value = parseFloat(star.getAttribute('data-value'));

            // Update the hidden input with the selected value
            ratingInput.value = value;

            // Toggle active (warning color) and inactive (grey) stars
            stars.forEach(s => {
                const sValue = parseFloat(s.getAttribute('data-value'));
                s.classList.toggle('active', sValue <= value);
            });
        });
    });
</script>


        </div>
    </div>
    <!-- Contact Form End -->
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
