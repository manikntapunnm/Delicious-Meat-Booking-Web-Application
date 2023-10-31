<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>D-LICIOUS | Chicken</title>

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
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="customer_dashboard.jsp">Home</a></li>
                <li><a href="customer_account.jsp">My Account</a></li>
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
                        <li class="active"><a href="customer_dashboard.jsp">Home</a></li>
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
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
   <%
            String email = request.getParameter("email");
              session.setAttribute("email", email);
      //out.println(email);
            %>
            <style>

            .flip-card {
                background-color: transparent;
                width: 280px;
                height: 251px;
                perspective: 1000px;
            }

            .flip-card-inner {
                position: relative;
                width: 100%;
                height: 100%;
                text-align: center;
                transition: transform 0.6s;
                transform-style: preserve-3d;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            }

            .flip-card:hover .flip-card-inner {
                transform: rotateX(180deg);
            }

            .flip-card-front, .flip-card-back {
                position: absolute;
                width: 100%;
                height: 100%;
                -webkit-backface-visibility: hidden;
                backface-visibility: hidden;
            }

            .flip-card-front {
                background-color: #bbb;
                color: black;
            }

            .flip-card-back {
                background-color: #e6f3ff;
                color: #000;
                transform: rotateX(180deg);
            }




        </style>
        <style>

            /*.featured__item:hover .featured__item__pic2 .featured__item__pic__hover2 {
                    bottom: 20px;
            }*/

            .featured__item__pic2 {
                /*        height: 270px;*/
                position: relative;
                overflow: hidden;
                background-position: center center;
            }



            .featured__item__pic__hover2 li {
                list-style: none;
                display: inline-block;
                margin-right: 6px;
            }

            .featured__item__pic__hover2 li:last-child {
                /*        margin-right: 0;*/
            }

            .featured__item__pic__hover2 li:hover a {
                background: #7fad39;
                border-color: #7fad39;
            }

            .featured__item__pic__hover2 li:hover a i {
                color: #ffffff;
                transform: rotate(360deg);
            }

            .featured__item__pic__hover2 li a {
               
            }
            .class{
                 font-size: 16px;
                color: #1c1c1c;
                height: 40px;
                width: 40px;
                line-height: 40px;
                text-align: center;
                border: 1px solid #ebebeb;
                background: #ffffff;
                display: block;
                border-radius: 50%;
                -webkit-transition: all, 0.5s;
                -moz-transition: all, 0.5s;
                -ms-transition: all, 0.5s;
                -o-transition: all, 0.5s;
                transition: all, 0.5s;
            }

            .featured__item__pic__hover2 li a i {
                position: relative;
                transform: rotate(0);
                -webkit-transition: all, 0.3s;
                -moz-transition: all, 0.3s;
                -ms-transition: all, 0.3s;
                -o-transition: all, 0.3s;
                transition: all, 0.3s;
            }
        </style>


        <style>
            /* Styling for the table */
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 10px;
            }
            table tr {
                width:100%;
            }
            table td {
                /*  padding: 2px;*/
                border: 1px solid #ddd;
                /*  width: 40%;*/
                text-align: left;
            }


            table tr:hover {
                background-color: #debaba;
            }
        </style>
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
                            
                       <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>
<div class="row">
    <% 
    try {
   
        // Connect to the database and retrieve item details based on a unique identifier (e.g., item ID)
        Connection connection = new Dbconn.dbconn().getConnection();
        String category = request.getParameter("category");
        String selectSql = "SELECT * FROM items1 where category=?";
        PreparedStatement selectStatement = connection.prepareStatement(selectSql);
        selectStatement.setString(1, category);
        ResultSet resultSet = selectStatement.executeQuery();

        while (resultSet.next()) {
           
            String itemName = resultSet.getString("item_name");
            
            
            double discount = resultSet.getDouble("discount");
            byte[] imageDataBytes = resultSet.getBytes("item_image");
            String category1 = resultSet.getString("category");
            int itemid = resultSet.getInt("item_id");

            String formattedDiscount = "OFF " + String.format("%.0f", discount) + " %";
            
           
           
            String base64Image = java.util.Base64.getEncoder().encodeToString(imageDataBytes);
            
            
            double price = resultSet.getDouble("price");
            String quantity = resultSet.getString("quantity");
            double quantityValue = Double.parseDouble(quantity);
    

    
double discountedPrice = price - (price * (discount / 100));
  String formattedResult = String.format("%.0f", discountedPrice) + "&#8377";
  double pricePerKg = discountedPrice / quantityValue;
            
    %>
    <div class="col-lg-4 col-md-4 col-sm-6 mix vegetables">
        <div class="featured__item">
            <form  action="ordering-action3.jsp?email=<%=email%>&itemid=<%=itemid%>" method="post">
                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="data:image/jpeg;base64,<%=base64Image%>"  width="275px" height="250px">
                        </div>
                        <style>
.button {
  background-color: #008CBA;
  border: none;
  color: white;
  padding: 5px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 12px;
}
</style>
                        
                        <div class="flip-card-back">
                            <table>
                                <img src="data:image/jpeg;base64,<%=base64Image%>"  width="150px" height="90px">
                                <tr>
                                <div>
                                    <ul class="featured__item__pic__hover2 featured__item__pic2 ">
                                        <li><a href="#" class=" class" ><i class="fa fa-heart"></i></a></li>
                                        <li><a href="overview.jsp?itemid=<%=itemid%>&category=<%=category1%>&email=${sessionScope.email}&discountprice=<%=discountedPrice%>&priceperkg=<%=pricePerKg%>" class="button" >Order now</a></li>
                                        <li><a href="#" class=" class"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                </tr>
                                <tr>
                                    <td style="background-color: #a3c2c2;color: white;">Discount:</td>
                                    <td colspan="3" style="background-color: #badecc;color: black;"><h6><%=formattedDiscount%></h6></td>
                                    <td style="background-color: #a3c2c2;color: white;">OffPrice:</td>
                                    <td style="background-color: #badecc;color: black;"><h6><%= formattedResult%></h6></td>
                                </tr>
                                <tr>
                                    <td style="background-color: #a3c2c2;color: white;">Category:</td>
                                    <td colspan="3" style="background-color: #badecc;color: black;"><h6><%= category1%></h6></td>
                                    <td style="background-color: #a3c2c2;color: white;">Item:</td>
                                    <td style="background-color: #badecc;color: black;"><h6><%= itemName%></h6></td>
                                </tr>
                                <tr>
                                    <td style="background-color: #a3c2c2;color: white;">KGs:</td>
                                    <td colspan="3" style="background-color: #badecc;color: black;"><h6><%= quantity%></h6></td>
                                    <td style="background-color: #a3c2c2;color: white;">Price:</td>
                                    <td style="background-color: #badecc;color: black;"><h6><%= price%></h6></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="featured__item__text">
                    <div >
                          
                        <div class="input-group">
                            <span class="input-group-text">Enter Quantity:</span>
<input type="number" name="userquantity" class="form-control" placeholder="in Kgs" required>
                        </div>
  
                        <div class="input-group">
                            
                            <input type="hidden" name="image" value="<%=base64Image%>">
                            <input type="hidden" name="category" value="<%=category1%>">
                            <input type="hidden" name="itemname"  value="<%=itemName%>">
                            <input type="hidden" name="priceperkg" value="<%=pricePerKg %>">
                            <input type="hidden" name="price" value="<%=discountedPrice %>">
                            <input type="hidden" name="discount"  value="<%=discount%>">
                           
                        
                        </div>
                    </div>
                    <input type="submit" class="btn btn-primary mt-2" value="Order" >
                </div>
            </form>
        </div>
    </div>

    <%
         // Handle the case where no item with the specified ID was found
    }
    resultSet.close();
    selectStatement.close();
    connection.close();
    } catch (Exception e) {
        e.printStackTrace();
        // Handle any potential exceptions here and redirect to an error page
        out.println(e);
    }
    %>
</div>

                    </div>
                </div>
            </div>
        </section>

    <!-- Hero Section End -->
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
