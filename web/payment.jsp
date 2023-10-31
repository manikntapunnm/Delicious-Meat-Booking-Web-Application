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

                <div class="col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <!-- <li class="active"><a href="">Login</a></li> -->
                            <li><a href="customer_dashboard.jsp">Home</a></li>
                            <li><a href="customer_account.jsp">My Account</a></li>
                            <li><a href="customer_mybookings.jsp">My Bookings</a></li>
                            <li><a href="customer-cart.jsp"><span><i class="bi bi-cart-check"></i></span>Cart </a></li>
                            <li><a href="index.jsp">Logout</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-2">
                    <div class="header__cart">
                        <ul>
                           <li><a href="customer_wishlist.jsp?email=${sessionScope.email}"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="customer-cart.jsp?email=${sessionScope.email}"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <!-- <div class="header__cart__price">item: <span>&#8377; 150.00</span></div> -->
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <section class="breadcrumb-section set-bg"
        data-setbg="https://media.istockphoto.com/photos/assortment-of-meat-and-seafood-picture-id1212824120?k=20&m=1212824120&s=612x612&w=0&h=yHkNBM-cUaMXEdVQj1GzZ_AAZ9tsV06dMuYIzcRzqbM=">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Payment Section</h2>
                        <div class="breadcrumb__option">
                            <a href="customer_dashboard.jsp">Home</a>
                            <span>Payment</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
       <%
           String email = (String) session.getAttribute("email");
              session.setAttribute("email", email);
      //out.println(email);
            %>
                    
 <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>


<%@ page import="Dbconn.dbconn"%>
    
    

        
         <section class="shoping-cart spad">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">Products</th>
                                </tr>
                             
                                
                            </thead>
                             
                            <tbody>
                                  <%
              int customerid = Integer.parseInt(request.getParameter("customerid"));
          int roundedPrice = 0;
    int bookingid = Integer.parseInt(request.getParameter("bookingid"));
     
    String price = request.getParameter("price");
               
            String sql = "select * from cart where booking_id=?";
            try {
            
            Connection conn = dbconn.getConnection();
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setInt(1, bookingid);
                ResultSet result = statement.executeQuery();

                while (result.next()) {
                    String cartId = result.getString("cart_id");
                    
                    String productPrice = result.getString("price");
                    byte[] ImageBytes = result.getBytes("image");
                    String ImageBase64 = Base64.encodeBase64String(ImageBytes);
                    double priceDouble = Double.parseDouble(price);

// Convert the double to the nearest integer
 roundedPrice = (int) Math.round(priceDouble);
                    
        %>
                                     <%


%>
                                <tr>
                                    <td class="shoping__cart__item  row  ">
                                      
                                        <img class="  mr-5 row  col-md-4 " src="data:image/jpeg;base64,<%=ImageBase64%>"  width="100px" height="100px">
                                        
                                         <p class="  mr-5 row  col-md-4 "><%= result.getString("quantity_kgs") %> KG </p>
                                          <p ><%= productPrice %> &#8377</p>
                                    </td>

                                   

                                </tr>
                                  <%}%>

                             
                              <h3 style="text-align: right;">Total <%= price %> &#8377</h3>
                            
   
                            </tbody>
                        </table>
                            

                    </div>
                </div>
            </div>

                       
               <div class="col-lg-12">
                    <div class="shoping__cart__btns">
<!--                        <a href="customer_dashboard.jsp" class="primary-btn cart-btn">CONTINUE SHOPPING</a>-->
                        
<!--<a href="javascript:void(0)" class="primary-btn cart-btn cart-btn-right custom-blue-link" data-bookingid="<%= bookingid %>" data-amount="<%= price %>">
    <button type="button" class="btn btn-primary" data-bookingid="<%= bookingid %>" data-customerid="<%= customerid %>" data-amount="<%= price %>">
        Buy Now
    </button>
</a>-->
<button type="button" class="btn btn-primary buynow" data-bookingid="<%= bookingid %>" data-customerid="<%= customerid %>" data-amount="<%= roundedPrice %>">
    Buy Now
</button>

 </div>
                </div>
    </section>
        
        <%
               
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
        
        



 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script>
    $(document).ready(function() {
        $(".buynow").click(function(e) {
            e.preventDefault();

            var bookingid = $(this).data('bookingid');
            var customerid = $(this).data('customerid');
            var amount = $(this).data('amount'); 
            console.log("Amount:", amount);

            var options = {
                "key": "rzp_test_kOmH4g27bp870m",
                "amount": amount * 100, // Make sure amount is defined
                "name": "Codebook",
                "image": "https://1.bp.blogspot.com/-Sf4sPT42qCA/UM4IxB3MzFI/AAAAAAAABlg/8GIO3ApcVQY/s1600/apple+logo+png.png",
                "handler": function(response) {
                    var paymentid = response.razorpay_payment_id;
                    //console.log("Booking ID:", bookingid);
                    //console.log("Customer ID:", customerid);
                    //console.log("Payment ID:", paymentid);

                    $.ajax({
                        url: "payment-process.jsp",
                        type: "POST",
                        data: {
                            bookingid: bookingid,
                            customerid: customerid,
                            paymentid: paymentid
                        },
                        success: function(finalresponse) {
                            if (finalresponse.trim() === 'done') {
                                console.log("Payment processed successfully");
                                window.location.href = "success.jsp?paymentid=" + paymentid;
                            } else {
                                alert('Payment processing failed. Please check console for details.');
                                console.log(finalresponse);
                            }
                        },
                        error: function(xhr, status, error) {
                            console.error("AJAX Error:", status, error);
                        }
                    });
                },
                "theme": {
                    "color": "#3399cc"
                }
            };

            var rzp1 = new Razorpay(options);
            rzp1.open();
        });
    });
</script>
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
