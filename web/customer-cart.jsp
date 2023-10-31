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
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css">
       <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
<%
String successMessage = (String) request.getSession().getAttribute("successMessage");
if (successMessage != null && !successMessage.isEmpty()) {
%>
<script>
    Swal.fire({
        icon: 'success',
        title: 'Success',
        text: '<%= successMessage %>',
    }).then(function() {
        // Redirect to another page after the user closes the alert
        window.location.href = 'customer-cart.jsp'; // Change the URL as needed
    });
</script>
<%
    // Clear the session attribute to prevent showing the alert on page refresh
    request.getSession().removeAttribute("successMessage");
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
            <a href="customer_dashboard.jsp?email=${sessionScope.email}">
                <h3><b class="text-danger">D</b>-<b class="text-primary">L</b>&nbsp;<b
                        class="text-secondary">I</b>&nbsp;<b class="text-success">C</b>&nbsp;<b
                        class="text-warning">I</b>&nbsp;<b class="text-info">O</b>&nbsp;<b
                        class="text-danger">U</b>&nbsp;<b class="text-dark">S</b>
            </a></h>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li><a href="customer_dashboard.jsp?email=${sessionScope.email}">Home</a></li>
                <li><a href="customer_account.jsp?email=${sessionScope.email}">My Account</a></li>
                <li><a href="customer_mybookings.jsp?email=${sessionScope.email}">My Bookings</a></li>
                <li class="active"><a href="customer-cart.jsp?email=${sessionScope.email}"><span><i class="bi bi-cart-check"></i></span>Cart </a>
                </li>
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
                <div class="col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <!-- <li class="active"><a href="">Login</a></li> -->
                            <li><a href="customer_dashboard.jsp?email=${sessionScope.email}">Home</a></li>
                            <li><a href="customer_account.jsp?email=${sessionScope.email}">My Account</a></li>
                            <li><a href="customer_mybookings.jsp?email=${sessionScope.email}">My Bookings</a></li>
                            <li class="active"><a href="customer-cart.jsp?email=${sessionScope.email}"><span><i
                                            class="bi bi-cart-check"></i></span>Cart </a></li>
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
                        <!-- <div class="header__cart__price">item: <span>&#8377; 150.00</span></div> -->
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    
    
       <%
           String email = (String) session.getAttribute("email");
              session.setAttribute("email", email);
      //out.println(email);
            %>
    
    
    <section class="breadcrumb-section set-bg"
        data-setbg="https://media.istockphoto.com/photos/assortment-of-meat-and-seafood-picture-id1212824120?k=20&m=1212824120&s=612x612&w=0&h=yHkNBM-cUaMXEdVQj1GzZ_AAZ9tsV06dMuYIzcRzqbM=">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Shopping Cart</h2>
                        <div class="breadcrumb__option">
                            <a href="customer_dashboard.jsp?email=${sessionScope.email}">Home</a>
                            <span>Shopping Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
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
                                <th>Price(Kg)</th>
                                <th>Quantity (Kgs)</th>
                                <th>Total</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <% int itemCounter = 0; 
                              double totalValue = 0.0;

                            %>
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




  String selectSql = "SELECT cart.*, items1.* " +
                      "FROM cart " +
                      "INNER JOIN items1 ON cart.item_id = items1.item_id " +
                      "WHERE cart.customer_id = ? AND cart.booking_status = 'Pending'";
    
                                 
                                PreparedStatement selectStatement = connection.prepareStatement(selectSql);
                                selectStatement.setString(1, customerId);
                               
                                ResultSet resultSet = selectStatement.executeQuery();
                     String itemName = null;
                     String bookingstatus= null;
                                while (resultSet.next()) {
                                    itemCounter++;
                                 
                                    String cartid = resultSet.getString("cart_id");
                                    itemName = resultSet.getString("item_name");
                                    bookingstatus = resultSet.getString("booking_status");
                                   // out.println(bookingstatus);
                                    double discount = resultSet.getDouble("discount");
                                    byte[] imageDataBytes = resultSet.getBytes("item_image");
                                    String category1 = resultSet.getString("category");
                                    int itemId = resultSet.getInt("item_id");
                                    String base64Image = java.util.Base64.getEncoder().encodeToString(imageDataBytes);
                                   
                                    double pricePerKg = resultSet.getDouble("priceperkg");
                                   
                                    String quantity = resultSet.getString("quantity_kgs");
                                   double price = resultSet.getDouble("price");
                                    totalValue += price;
                                   // session.setAttribute("totalPrice", totalValue);
                                   
                            %>
                   <tr>
    <td class="shoping__cart__item">
        <img class="mr-5 row col-md-4" src="data:image/jpeg;base64,<%=base64Image%>" width="100px" height="100px">
        <h5><%= itemName %></h5>
    </td>
    <td class="shoping__cart__price">
        <%=pricePerKg%> &#8377
        <input type="hidden" class="priceperkg" value="<%=pricePerKg%>">
    </td>
    <td class="shoping__cart__quantity" style="position: relative;">
        <div style="display: flex; align-items: center;">
            <input type="number" class="userquantity form-control" value="<%= quantity %>" style="width: 100px;">
            <button class="updateButton" data-cartid="<%= cartid %>" data-customerid="<%= customerId %>" data-itemid="<%= itemId %>" >Go</button>
        </div>
    </td>
    <td class="shoping__cart__total">
        <%=price%> &#8377
       
    </td>
  <td class="shoping__cart__item__close">
    <a href="delete.jsp?email=${sessionScope.email}&cartid=<%= cartid %>">
        <span class="icon_close"></span>
    </a>
</td>

</tr>
                          <script>
    // Add event listeners to all "Go" buttons
var updateButtons = document.querySelectorAll(".updateButton");

updateButtons.forEach(function(button) {
    button.addEventListener("click", function () {
        // Get the updated quantity value
        var row = button.closest("tr");
        var updatedQuantity = row.querySelector(".userquantity").value;

        // Get the price value from the hidden input field
        var price = row.querySelector(".priceperkg").value;

        // Get the cartid, customerId, itemId, and bookingId from data attributes
        var cartid = button.getAttribute("data-cartid");
        var customerId = button.getAttribute("data-customerid");
        var itemId = button.getAttribute("data-itemid");
        //var bookingId = button.getAttribute("data-bookingid"); // Corrected variable name
var discountedPrice = '<%= session.getAttribute("discountedprice") %>'; // Replace with the correct attribute name
        // Construct the URL with the updatedQuantity, price, customerId, itemId, and email as query parameters
        //var url = "update.jsp?updatedQuantity=" + updatedQuantity + "&price=" + price + "&customerId=" + customerId + "&itemId=" + itemId + "&email=" + '<%= session.getAttribute("email") %>' + "&cartid=" + cartid + "&bookingid=" + bookingId; // Corrected variable name
var url = "update.jsp?updatedQuantity=" + updatedQuantity + "&price=" + price + "&customerId=" + customerId + "&itemId=" + itemId + "&email=" + '<%= session.getAttribute("email") %>' + "&cartid=" + cartid +  "&discountedPrice=" + discountedPrice;

        // Redirect to the other page (update.jsp?email=${sessionScope.email})
        window.location.href = url;
    });
});

</script>




                               
                                                            <%
                                                                
         // Handle the case where no item with the specified ID was found
    }
  
    %>
    
    
 
    
   
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="customer_dashboard.jsp?email=${sessionScope.email}" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                        <a href="customer-cart.jsp?email=${sessionScope.email}" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            Upadate Cart</a>
                    </div>
                </div>
   
             <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>Discount Codes</h5>
                            <form action="applycoupon.jsp?price=<%= totalValue %>&email=<%=email%> " method="post">
                                  <input type="text" placeholder="Enter your coupon code" name="couponCode" required>
                                <button type="submit" class="site-btn">APPLY COUPON</button>
                            </form>
                        </div>
                    </div>
                </div>
                                  
                <div class="col-lg-6">
                    
                    <div class="shoping__checkout">

                        <h5>Cart Total</h5>
                        
                        <ul>
                            <% String discountedPrice  = request.getParameter("discountedTotalValue");
                           String totalValueString = String.valueOf(totalValue);

// Check if discountedPrice is null or not applied
if (discountedPrice == null) {
    discountedPrice = totalValueString; // Set discountedPrice to totalValue as a string
} else {
    // Convert discountedPriceValue to a string
    discountedPrice = String.valueOf(discountedPrice);
}
                            %>
                            <li>Subtotal <span>&#8377;<%= totalValue %> </span></li>
                          <li>Total <span id="totalValue">&#8377; <%= totalValue  %> </span></li>
                        </ul>
                        <a href="customer_checkout.jsp?email=${sessionScope.email}&subtotal=<%= totalValue  %>&discountedPrice=<%=discountedPrice%>&itemname=<%= itemName %>&customerid=<%=customerId%>" class="primary-btn">PROCEED TO CHECKOUT</a>

                    </div>
                </div>
            </div>
        </div>
    </section>
                    
                                                                                        <%
            String totalPrice= request.getParameter("totalPrice");
            
String discountedTotalValue = request.getParameter("discountedTotalValue");
 

if (discountedTotalValue!= null) {
   // double discountedPrice = Double.parseDouble(discountedTotalValue);
    // out.println(discountedPrice);
    session.setAttribute("discountedprice",discountedPrice);
    // Use the discountedPrice as needed in your cart.jsp

%>   
  <script>
    // Function to get URL parameter by name
    function getUrlParameter(name) {
        name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
        var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
        var results = regex.exec(location.search);
        return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
    }

    // Get the initial totalValue from the URL
    var initialTotalValue = getUrlParameter('totalValue');

    // Initially display the total value
    var totalValueElement = document.getElementById('totalValue');
    totalValueElement.innerHTML = '&#8377;' + initialTotalValue;

    // Optionally, you can set a timeout to update the value after a delay
    setTimeout(function () {
        // Update the total value after a delay (e.g., 3 seconds) with a new value
        var updatedTotalValue = '<%=discountedPrice%>'; // Replace with your updated value
        totalValueElement.innerHTML = '&#8377;' + updatedTotalValue;
    }, 30); // Update after a 3-second delay (adjust the time as needed)
</script>



       
            
               <%}
            resultSet.close();
    selectStatement.close();
    connection.close();
    } catch (Exception e) {
        e.printStackTrace();
        // Handle any potential exceptions here and redirect to an error page
        out.println(e);
    }
                            %>
    <!-- Contact Form End -->
 
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
