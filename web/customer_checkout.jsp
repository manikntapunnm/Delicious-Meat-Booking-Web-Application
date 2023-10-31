<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>D-LICIOUS | Checkout</title>

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
                        <ul>
                            <li><a href="freshmeat.jsp">Fresh Meat</a></li>
                            <li><a href="chicken.jsp">Chicken</a></li>
                            <li><a href="fish.jsp">Fish</a></li>
                            <li><a href="mutton.jsp">Mutton</a></li>
                            <li><a href="prawns.jsp">Prawns</a></li>
                            <li><a href="#">Spreads</a></li>
                            <li><a href="#">Combos</a></li>
                            <li><a href="#">Gourmet</a></li>
                            <li><a href="#">Eggs</a></li>
                            <li><a href="#">Seafood</a></li>
                            <li><a href="Beef.jsp">Beef</a></li>
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
        data-setbg="https://media.istockphoto.com/photos/assortment-of-meat-and-seafood-picture-id1212824120?k=20&m=1212824120&s=612x612&w=0&h=yHkNBM-cUaMXEdVQj1GzZ_AAZ9tsV06dMuYIzcRzqbM=">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Checkout</h2>
                        <div class="breadcrumb__option">
                            <a href="customer_dashboard.jsp">Home</a>
                            <span>Checkout</span>
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
    <!-- Breadcrumb Section End -->
    <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>


<%
                            try {
                                Connection connection = new Dbconn.dbconn().getConnection();
                                String customerId = "";
                                String itemId1 = "";
                                String selectCustomerSQL = "SELECT customer_id FROM customers WHERE email = ?";
                                PreparedStatement selectCustomerStatement = connection.prepareStatement(selectCustomerSQL);
                                selectCustomerStatement.setString(1, email);
                                ResultSet customerResult = selectCustomerStatement.executeQuery();

                                if (customerResult.next()) {
                                    customerId = customerResult.getString("customer_id");
                                    customerResult.close();
                                    selectCustomerStatement.close();
                                } else {
                                    // Handle the case where no customer with the given email is found
                                }

                                String selectitemSQL = "SELECT item_id FROM cart WHERE customer_id = ?";
                                PreparedStatement selectitemStatement = connection.prepareStatement(selectitemSQL);
                                selectitemStatement.setString(1, customerId);
                                ResultSet itemResult = selectitemStatement.executeQuery();

                                if (itemResult.next()) {
                                    itemId1 = itemResult.getString("item_id");
                                    itemResult.close();
                                    selectitemStatement.close();
                                } else {
                                    // Handle the case where no items for the customer are found
                                }


                  String selectSql = "SELECT cart.*, items1.*,  customers.* " +
                  "FROM cart " +
                  "INNER JOIN items1 ON cart.item_id = items1.item_id " +

                  "INNER JOIN customers ON cart.customer_id = customers.customer_id " +
                  "WHERE cart.customer_id = ? And  cart.booking_status ='Pending' ";


                                PreparedStatement selectStatement = connection.prepareStatement(selectSql);
                                    selectStatement.setString(1, customerId);
                                    ResultSet resultSet = selectStatement.executeQuery();
                                    
                                    String cartid = null;
                                    String itemName = null;
                                    
                                    double discount = 0.0;
                                    byte[] imageDataBytes = null;
                                    String category1 = null;
                                    int itemId = 0;
                                    String base64Image = null;
                                    double pricePerKg = 0.0;
                                    String quantity = null;
                                    double price = 0.0;
                                    

                                    String FullName = null;
                                    String address = null;
                                    String city =null;
                                    String state = null;
                                    String postcode =null;
                                    String phone =null;
                                   //String email  =null;


                                    %>
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                  


    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
<!--                <div class="col-lg-12">
                    <h6><span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click here</a> to enter your code
                    </h6>
                </div>-->
            </div>
            <div class="checkout__form">
                <h4>Billing Details</h4>
                <form action="confirm-order.jsp" method="post">
                    <div class="row">
                        
                                              
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>Your Order</h4>

  <style>
        table {
            border-collapse: separate;
            border-spacing: 20px; /* Adjust the spacing as needed */
        }
        th, td {
            padding: 10px; /* Add padding to the cells for better spacing */
        }
    </style>
 
<table>
    <thead>
        <tr>
            <th>Item Name</th>
            <th>Price (₹)</th>
        </tr>
    </thead>
     <tbody>
                           <%
                                    while (resultSet.next()) {
                                    
                                    

                                            
                                            FullName=resultSet.getString("firstname");
                                            address =resultSet.getString("address");
                                            city=resultSet.getString("address");
                                            state=resultSet.getString("state");
                                            postcode = resultSet.getString("pincode");
                                            phone = resultSet.getString("phone");
//email = resultSet.getString("email");
                                            
                                            cartid = resultSet.getString("cart_id");
                                             itemName = resultSet.getString("item_name");
                                           
                                            discount = resultSet.getDouble("discount");
                                            imageDataBytes = resultSet.getBytes("item_image");
                                            category1 = resultSet.getString("category");
                                            itemId = resultSet.getInt("item_id");
                                            base64Image = java.util.Base64.getEncoder().encodeToString(imageDataBytes);
                                            pricePerKg = resultSet.getDouble("priceperkg");
                                            quantity = resultSet.getString("quantity_kgs");
                                            //out.println(quantity);
                                            price = resultSet.getDouble("price");
                                            // session.setAttribute("totalPrice", totalValue);

%>




                            <tr>
                                <td><%= itemName %></td>
                                <td>&#8377;<%=price %></td>
                            </tr>
                            <%
                                }
 
                                // Close the database connection and ResultSet here if necessary
                            %>
                               <%
        String discountprice=request.getParameter("discountedPrice");
        String totalprice=request.getParameter("subtotal");
        
          
        %>
                        </tbody>
</table>


                                <div class="checkout__order__subtotal">Subtotal <span>&#8377;<%= totalprice%></span></div>
                                <div class="checkout__order__total">Total <span>&#8377;<%= discountprice %></span></div>
<!--                                <div class="checkout__input__checkbox">
                                    <label for="acc-or">
                                        Create an account?
                                        <input type="checkbox" id="acc-or">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>-->

                                <div class="checkout__input__checkbox">
                                    <label for="paypal">
                                        Paypal
                                        <input type="checkbox" id="paypal">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <button type="submit" class="site-btn text-white">
                                        PLACE ORDER</button>
                            </div>
                        </div>
                        
                        <div class="col-lg-8 col-md-6">
                         <div class="checkout__input">
                                <p>Full Name<span>*</span></p>
                                <input type="text" value="<%=FullName %>">
                            </div>
                            <div class="checkout__input">
                                <p>Address<span>*</span></p>
                                <input type="text" placeholder="Street Address" class="checkout__input__add" value="<%=address%>">
                                
                            </div>
<!--                            <div class="checkout__input">
                                <p>City<span>*</span></p>
                                <input type="text" value="<%=city%>">
                            </div>-->
                            <div class="checkout__input">
                                <p>State<span>*</span></p>
                                <input type="text" value="<%=state%>">
                            </div>
                            <div class="checkout__input">
                                <p>Postcode<span>*</span></p>
                                <input type="text" value="<%=postcode%>">
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Phone<span>*</span></p>
                                        <input type="text" value="<%=phone%>">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="text" value="<%=email%>">
                                    </div>
                                </div>
                            </div>

                            <div class="checkout__input">
                                <p>Account Password<span>*</span></p>
                                <input type="text" placeholder="Enter Password"  value="Durga@123" required>
                            </div>

                        </div>
                            
        
                               <input type="hidden" name="quantity" value="<%=quantity%>">
                            <input type="hidden" name="image" value="<%=base64Image%>">
                            <input type="hidden" name="category" value="<%=category1%>">
                            <input type="hidden" name="itemid" value="<%=itemId1%>">
                            <input type="hidden" name="cartid" value="<%=cartid%>">
                            <input type="hidden" name="customerid" value="<%=customerId%>">
                            <input type="hidden" name="price" value="<%= discountprice %>">
                            <input type="hidden" name="priceperkg" value="<%=pricePerKg%>">

     
                                    
                                    
              
                    </div>
                </form>
            </div>
        </div>
    </section>
    <%                       resultSet.close();
        selectStatement.close();
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
        // Handle any potential exceptions here and redirect to an error page
        out.println(e);
    }
%>
    <!-- Checkout Section End -->

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
