<%-- 
    Document   : applycoupon
    Created on : 15-Sept-2023, 5:07:55 pm
    Author     : manikanta

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*, Dbconn.dbconn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        String couponCode = request.getParameter("couponCode");
        if (couponCode != null && !couponCode.isEmpty()) {
            Connection connection = null;
            try {
                // Establish a database connection
                connection = new dbconn().getConnection(); // Assuming dbconn is your database connection class
                
                // Create a SQL query to retrieve the percentage discount based on the coupon code
                String sql = "SELECT percentage FROM coupons WHERE coupon=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, couponCode);
                ResultSet resultSet = preparedStatement.executeQuery();
                
                if (resultSet.next()) {
                    int percentageDiscount = resultSet.getInt("percentage");
                    // Use the percentage discount as needed
                   
                     String priceString = request.getParameter("price"); // Replace with your actual price string
                    double priceDouble = Double.parseDouble(priceString);
                    
                    // Calculate the discounted price
                    double discountedPrice = priceDouble - (priceDouble * percentageDiscount / 100.0);
                    
                    // Use the discounted price as needed
                    out.println("Coupon applied! Percentage discount: " + percentageDiscount + "%. Discounted Price: $" + discountedPrice);
             response.sendRedirect("customer-cart.jsp?discountedTotalValue=" + discountedPrice);
                    
                } else {
                    out.println("Invalid coupon code");
                    String priceString = request.getParameter("price"); // Replace with your actual price string
                    response.sendRedirect("customer-cart.jsp?discountedTotalValue=" + priceString);
                }
            } catch (Exception e) {
                e.printStackTrace();
                // Handle database errors
            } finally {
                try {
                    if (connection != null) {
                        connection.close(); // Close the database connection
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>
    </body>
</html>






<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*, java.text.SimpleDateFormat, Dbconn.dbconn" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <!-- Include SweetAlert library -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
   
    <%
    String couponCode = request.getParameter("couponCode");
    String email = request.getParameter("email");
    if (couponCode != null && !couponCode.isEmpty()) {
        Connection connection = null;
        try {
            // Establish a database connection
             connection = new dbconn().getConnection(); 
            // Create a SQL query to retrieve the percentage discount and validity date based on the coupon code
            String sql = "SELECT percentage, validity, coupon_id FROM coupons WHERE coupon=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, couponCode);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int couponId = resultSet.getInt("coupon_id");
                int percentageDiscount = resultSet.getInt("percentage");
                String validityDateStr = resultSet.getString("validity");
                java.util.Date currentDate = new java.util.Date(); // Current date

                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                java.util.Date validityDate = sdf.parse(validityDateStr); // Parse validity date from the database

                String selectCustomerIdSql = "SELECT customer_id FROM customers WHERE email=?";
                PreparedStatement selectCustomerIdStatement = connection.prepareStatement(selectCustomerIdSql);
                selectCustomerIdStatement.setString(1, email);
                ResultSet customerIdResultSet = selectCustomerIdStatement.executeQuery();

                if (customerIdResultSet.next()) {
                    int customerId = customerIdResultSet.getInt("customer_id");
                    String updateCouponSql = "UPDATE customers SET coupon_id=? WHERE customer_id=?";
                    PreparedStatement updateCouponStatement = connection.prepareStatement(updateCouponSql);
                    updateCouponStatement.setInt(1, couponId);
                    updateCouponStatement.setInt(2, customerId);
                    int updatedRows = updateCouponStatement.executeUpdate();

                    // Compare the validity date with the current date
                    if (currentDate.before(validityDate)) {
                        // Coupon is valid; calculate the discounted price
                        String priceString = request.getParameter("price"); // Replace with your actual price string
                        double priceDouble = Double.parseDouble(priceString);

                        // Calculate the discounted price
                        double discountedPrice = priceDouble - (priceDouble * percentageDiscount / 100.0);

                        // Use the discounted price as needed
                        out.println("Coupon applied! Percentage discount: " + percentageDiscount + "%. Discounted Price: $" + discountedPrice);

                        // Show a success alert using SweetAlert
                        %>
                        <script>
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: 'Coupon applied! Percentage discount: <%= percentageDiscount %>%. Discounted Price: $<%= discountedPrice %>',
                            }).then(function() { window.location.href = 'customer-cart.jsp?discountedTotalValue=<%= discountedPrice %>'; });
                        </script>
                        <%
                    } else {
                        // Coupon has expired
                        String priceString = request.getParameter("price"); // Replace with your actual price string
                        out.println("Coupon has expired");

                        // Show an error alert using SweetAlert
                        %>
                        <script>
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: 'Coupon has expired',
                            }).then(function() { window.location.href = 'customer-cart.jsp?discountedTotalValue=<%= priceString %>'; });
                        </script>
                        <%
                    }
                } else {
                    // Customer not found by email
                    String priceString = request.getParameter("price"); // Replace with your actual price string
                    out.println("Customer not found by email");

                    // Show an error alert using SweetAlert
                    %>
                    <script>
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Customer not found by email',
                        }).then(function() { window.location.href = 'customer-cart.jsp?discountedTotalValue=<%= priceString %>'; });
                    </script>
                    <%
                }
            } else {
                // Coupon code is invalid
                String priceString = request.getParameter("price"); // Replace with your actual price string
                out.println("Invalid coupon code");

                // Show an error alert using SweetAlert
                %>
                <script>
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Invalid coupon code',
                    }).then(function() { window.location.href = 'customer-cart.jsp?discountedTotalValue=<%= priceString %>'; });
                </script>
                <%
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Handle database errors or other exceptions
        } finally {
            try {
                if (connection != null) {
                    connection.close(); // Close the database connection
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println(e);

            }
        }
    }
    %>
</body>
</html>
--%>



<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*, java.text.SimpleDateFormat, Dbconn.dbconn" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <!-- Include SweetAlert library -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
   
    <%
    String couponCode = request.getParameter("couponCode");
    String email = request.getParameter("email");
    if (couponCode != null && !couponCode.isEmpty()) {
        Connection connection = null;
        try {
            // Establish a database connection
            connection = new dbconn().getConnection();
            // Create a SQL query to retrieve the percentage discount and validity date based on the coupon code
            String sql = "SELECT percentage, validity, coupon_id FROM coupons WHERE coupon=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, couponCode);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int couponId = resultSet.getInt("coupon_id");
                int percentageDiscount = resultSet.getInt("percentage");
                String validityDateStr = resultSet.getString("validity");
                java.util.Date currentDate = new java.util.Date(); // Current date

                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                java.util.Date validityDate = sdf.parse(validityDateStr); // Parse validity date from the database

                String selectCustomerIdSql = "SELECT customer_id, coupon_id FROM customers WHERE email=?";
                PreparedStatement selectCustomerIdStatement = connection.prepareStatement(selectCustomerIdSql);
                selectCustomerIdStatement.setString(1, email);
                ResultSet customerIdResultSet = selectCustomerIdStatement.executeQuery();

                if (customerIdResultSet.next()) {
                    int customerId = customerIdResultSet.getInt("customer_id");
                    int existingCouponId = customerIdResultSet.getInt("coupon_id");
                    
                    if (existingCouponId != 0) {
                        // Customer already has a coupon
                        String priceString = request.getParameter("price"); // Replace with your actual price string
                        out.println("Coupon already used");

                        // Show an error alert using SweetAlert
                        %>
                        <script>
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: 'Coupon already used',
                            }).then(function() { window.location.href = 'customer-cart.jsp?discountedTotalValue=<%= priceString %>'; });
                        </script>
                        <%
                    } else {
                        // Update the customer's coupon ID
                        String updateCouponSql = "UPDATE customers SET coupon_id=? WHERE customer_id=?";
                        PreparedStatement updateCouponStatement = connection.prepareStatement(updateCouponSql);
                        updateCouponStatement.setInt(1, couponId);
                        updateCouponStatement.setInt(2, customerId);
                        int updatedRows = updateCouponStatement.executeUpdate();

                        // Compare the validity date with the current date
                        if (currentDate.before(validityDate)) {
                            // Coupon is valid; calculate the discounted price
                            String priceString = request.getParameter("price"); // Replace with your actual price string
                            double priceDouble = Double.parseDouble(priceString);

                            // Calculate the discounted price
                            double discountedPrice = priceDouble - (priceDouble * percentageDiscount / 100.0);

                            // Use the discounted price as needed
                            out.println("Coupon applied! Percentage discount: " + percentageDiscount + "%. Discounted Price: $" + discountedPrice);

                            // Show a success alert using SweetAlert
                            %>
                            <script>
                                Swal.fire({
                                    icon: 'success',
                                    title: 'Success',
                                    text: 'Coupon applied! Percentage discount: <%= percentageDiscount %>%. Discounted Price: $<%= discountedPrice %>',
                                }).then(function() { window.location.href = 'customer-cart.jsp?discountedTotalValue=<%= discountedPrice %>'; });
                            </script>
                            <%
                        } else {
                            // Coupon has expired
                            String priceString = request.getParameter("price"); // Replace with your actual price string
                            out.println("Coupon has expired");

                            // Show an error alert using SweetAlert
                            %>
                            <script>
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Error',
                                    text: 'Coupon has expired',
                                }).then(function() { window.location.href = 'customer-cart.jsp?discountedTotalValue=<%= priceString %>'; });
                            </script>
                            <%
                        }
                    }
                } else {
                    // Customer not found by email
                    String priceString = request.getParameter("price"); // Replace with your actual price string
                    out.println("Customer not found by email");

                    // Show an error alert using SweetAlert
                    %>
                    <script>
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Customer not found by email',
                        }).then(function() { window.location.href = 'customer-cart.jsp?discountedTotalValue=<%= priceString %>'; });
                    </script>
                    <%
                }
            } else {
                // Coupon code is invalid
                String priceString = request.getParameter("price"); // Replace with your actual price string
                out.println("Invalid coupon code");

                // Show an error alert using SweetAlert
                %>
                <script>
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Invalid coupon code',
                    }).then(function() { window.location.href = 'customer-cart.jsp?discountedTotalValue=<%= priceString %>'; });
                </script>
                <%
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Handle database errors or other exceptions
        } finally {
            try {
                if (connection != null) {
                    connection.close(); // Close the database connection
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println(e);
            }
        }
    }
    %>
</body>
</html>
