
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="Dbconn.dbconn" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Action</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>

</head>
<body>
<%
String quantity = request.getParameter("userquantity");
String category = request.getParameter("category");
String price = request.getParameter("price");
String priceperkg = request.getParameter("priceperkg");
String email = request.getParameter("email");
String itemname = request.getParameter("itemname");
String base64Image = request.getParameter("image");
String currentURL = request.getParameter("currentURL");


out.println(quantity);
out.println(category);
out.println(price);
out.println(priceperkg);
out.println(itemname);

byte[] imageData = Base64.decodeBase64(base64Image);

Connection conn = null;
PreparedStatement preparedStatement = null;

try {
    conn = new Dbconn.dbconn().getConnection();
    int customerId = -1;
    int itemId = -1;

    // Check if the customer with the provided email exists
    String selectCustomerSQL = "SELECT customer_id FROM customers WHERE email = ?";
    PreparedStatement selectCustomerStatement = conn.prepareStatement(selectCustomerSQL);
    selectCustomerStatement.setString(1, email);
    ResultSet customerResult = selectCustomerStatement.executeQuery();

    if (customerResult.next()) {
        customerId = customerResult.getInt("customer_id");
        customerResult.close();
        selectCustomerStatement.close();

        // Fetch the itemId using itemname from the "items1" table
        String selectItemSQL = "SELECT item_id FROM items1 WHERE item_name = ?";
        PreparedStatement selectItemStatement = conn.prepareStatement(selectItemSQL);
        selectItemStatement.setString(1, itemname);
        ResultSet itemResult = selectItemStatement.executeQuery();

        if (itemResult.next()) {
            itemId = itemResult.getInt("item_id");
            itemResult.close();
            selectItemStatement.close();

            // Insert data into the "cart" table
            String cartSql = "INSERT INTO cart (customer_id, item_id, quantity_kgs, price, priceperkg, category, image) VALUES (?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = conn.prepareStatement(cartSql, Statement.RETURN_GENERATED_KEYS);

            preparedStatement.setInt(1, customerId);
            preparedStatement.setInt(2, itemId);
            preparedStatement.setString(3, quantity);
            preparedStatement.setString(4, price);
            preparedStatement.setString(5, priceperkg);
            preparedStatement.setString(6, category);
            preparedStatement.setBytes(7, imageData);

            int cartRowsInserted = preparedStatement.executeUpdate();
            
            if (cartRowsInserted > 0) {
//                String successMessage = "Added successfully.";
//                // Use JavaScript to show a success message and redirect
//                     out.println("<script>");
//                        out.println("Swal.fire({");
//                        out.println("  icon: 'success',");
//                        out.println("  title: 'Success',");
//                        out.println("  text: '" + successMessage + "',");
//                        out.println("}).then(function() { window.location.href = 'customer-cart.jsp?category=" + category + "&email=" + email + "'; });");
//                        out.println("</script>");

//String successMessage = "Added to Cart successfully.";
//
//// Use JavaScript to show a success message with two buttons for different choices
//out.println("<script>");
//out.println("Swal.fire({");
//out.println("  icon: 'success',");
//out.println("  title: 'Success',");
//out.println("  text: '" + successMessage + "',");
//out.println("  showCancelButton: true,"); // Show two buttons
//out.println("  confirmButtonText: 'CartPage',"); // Text for the first button
//out.println("  cancelButtonText: 'Return',"); // Text for the second button
//out.println("}).then(function(result) {");
//out.println("  if (result.isConfirmed) {");
//out.println("    window.location.href = '.jsp?category=" + category + "&email=" + email + "';"); // Redirect to URL1 on button 1 click
//out.println("  } else {");
//out.println("    window.location.href = 'customer-cart.jsp?category=" + category + "&email=" + email + "';"); // Redirect to URL2 on button 2 click
//out.println("  }");
//out.println("});");
//out.println("</script>");

String successMessage = "Added to Cart successfully.";

// Use JavaScript to show a success message with two buttons for different choices
out.println("<script>");
out.println("Swal.fire({");
out.println("  icon: 'success',");
out.println("  title: 'Success',");
out.println("  text: '" + successMessage + "',");
out.println("  showCancelButton: true,"); // Show two buttons
out.println("  confirmButtonText: 'CartPage',"); // Text for the first button
out.println("  cancelButtonText: 'Return',"); // Text for the second button
out.println("}).then(function(result) {");
out.println("  if (result.isConfirmed) {");
out.println("   window.location.href = 'customer-cart.jsp?category=" + category + "&email=" + email + "'; "); // Redirect to the current page
out.println("  } else {");
out.println("   window.location.href = '" + currentURL + "'; "); // Redirect to URL2 on button 2 click
out.println("  }");
out.println("});");
out.println("</script>");


                        
                        
                    
            } else {
                String errorMessage = "No Order Placed.";
                // Use JavaScript to show an error message and redirect
                    out.println("<script>");
                        out.println("Swal.fire({");
                        out.println("  icon: 'error',");
                        out.println("  title: 'Error',");
                        out.println("  text: '" + errorMessage + "',");
                        out.println("}).then(function() { window.location.href = 'customer_mybookings.jsp?category=" + category + "'; });");
                        out.println("</script>");
            }
        } else {
            String errorMessage = "Item with the provided name does not exist.";
            // Use JavaScript to show an error message and redirect
               out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'error',");
                out.println("  title: 'Error',");
                out.println("  text: '" + errorMessage + "',");
                out.println("}).then(function() { window.location.href = 'customer_mybookings.jsp?category=" + category + "'; });");
                out.println("</script>");
            
        }
    } else {
        String errorMessage = "Customer with the provided email does not exist.";
        // Handle the error as needed
    }
} catch (SQLException e) {
    e.printStackTrace();
    out.println(e);
    // Handle SQL error here (e.g., log the error)
} finally {
    try {
        if (preparedStatement != null) {
            preparedStatement.close();
        }
        if (conn != null) {
            conn.close();
        }
    } catch (SQLException e) {
        e.printStackTrace();
         out.println(e);
    }
}
%>
</body>
</html>

<%--

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="Dbconn.dbconn" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Action</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
String quantity = request.getParameter("userquantity");
String category = request.getParameter("category");
String price = request.getParameter("price");
String priceperkg = request.getParameter("priceperkg");
//String discount = request.getParameter("discount");

String email = request.getParameter("email");
String itemname = request.getParameter("itemname");
String base64Image = request.getParameter("image");
out.println(quantity);
out.println(category);
out.println(price);
out.println(priceperkg);
//out.println(email);
out.println(itemname);

byte[] imageData = Base64.decodeBase64(base64Image);

Connection conn = new Dbconn.dbconn().getConnection();
PreparedStatement preparedStatement = null;

try {
    int customerId = -1;
    int itemId = -1;

    // Check if the customer with the provided email exists
    String selectCustomerSQL = "SELECT customer_id FROM customers WHERE email = ?";
    PreparedStatement selectCustomerStatement = conn.prepareStatement(selectCustomerSQL);
    selectCustomerStatement.setString(1, email);
    ResultSet customerResult = selectCustomerStatement.executeQuery();

    if (customerResult.next()) {
        customerId = customerResult.getInt("customer_id");
        customerResult.close();
        selectCustomerStatement.close();

        // Fetch the itemId using itemname from the "items1" table
        String selectItemSQL = "SELECT item_id FROM items1 WHERE item_name = ?";
        PreparedStatement selectItemStatement = conn.prepareStatement(selectItemSQL);
        selectItemStatement.setString(1, itemname);
        ResultSet itemResult = selectItemStatement.executeQuery();

        if (itemResult.next()) {
            itemId = itemResult.getInt("item_id");
            itemResult.close();
            selectItemStatement.close();
            
            
            
            
            
            // Insert data into the "bookings" table
            String bookingSql = "INSERT INTO bookings (customer_id, item_id, quantity_kgs, price,priceperkg, category, image) VALUES (?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = conn.prepareStatement(bookingSql, Statement.RETURN_GENERATED_KEYS);

            preparedStatement.setInt(1, customerId);
            preparedStatement.setInt(2, itemId);
            preparedStatement.setString(3, quantity);
            preparedStatement.setString(4, price); // Use price2 for the price
            preparedStatement.setString(5, priceperkg);
            preparedStatement.setString(6, category);
            preparedStatement.setBytes(7, imageData);

            int bookingRowsInserted = preparedStatement.executeUpdate();

            if (bookingRowsInserted > 0) {
                ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
                if (generatedKeys.next()) {
                    int bookingId = generatedKeys.getInt(1); // Get the generated booking_id
                    generatedKeys.close();
 
                    // Insert data into the "cart" table
                    String cartSql = "INSERT INTO cart (customer_id, item_id, booking_id, quantity_kgs, price,priceperkg, category, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
                    PreparedStatement cartPreparedStatement = conn.prepareStatement(cartSql);

                    cartPreparedStatement.setInt(1, customerId);
                    cartPreparedStatement.setInt(2, itemId);
                    cartPreparedStatement.setInt(3, bookingId); // Insert the booking_id
                    cartPreparedStatement.setString(4, quantity);
                    cartPreparedStatement.setString(5, price); // Use price2 for the price
                    cartPreparedStatement.setString(6, priceperkg);
                    cartPreparedStatement.setString(7, category);
                    cartPreparedStatement.setBytes(8, imageData);

                    int cartRowsInserted = cartPreparedStatement.executeUpdate();
                    cartPreparedStatement.close();

                    if (cartRowsInserted > 0) {
                        String successMessage = "Ordered successfully.";
                        out.println("<script>");
                        out.println("Swal.fire({");
                        out.println("  icon: 'success',");
                        out.println("  title: 'Success',");
                        out.println("  text: '" + successMessage + "',");
                        out.println("}).then(function() { window.location.href = 'freshmeat.jsp?category=" + category + "&email=" + email + "'; });");
                        out.println("</script>");
                    } else {
                        String errorMessage = "No Order Placed.";
                        out.println("<script>");
                        out.println("Swal.fire({");
                        out.println("  icon: 'error',");
                        out.println("  title: 'Error',");
                        out.println("  text: '" + errorMessage + "',");
                        out.println("}).then(function() { window.location.href = 'customer_mybookings.jsp?category=" + category + "'; });");
                        out.println("</script>");
                    }
                }
                
                
                
                
                
                
                
                
                
            } else {
                String errorMessage = "No Order Placed.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'error',");
                out.println("  title: 'Error',");
                out.println("  text: '" + errorMessage + "',");
                out.println("}).then(function() { window.location.href = 'customer_mybookings.jsp?category=" + category + "'; });");
                out.println("</script>");
            }
        } else {
            String errorMessage = "Item with the provided name does not exist.";
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'error',");
            out.println("  title: 'Error',");
            out.println("  text: '" + errorMessage + "',");
            out.println("}).then(function() { window.location.href = 'customer_mybookings.jsp'; });");
            out.println("</script>");
        }
    } else {
        String errorMessage = "Customer with the provided email does not exist.";
        // Handle the error
    }

    conn.close();

} catch (SQLException e) {
    e.printStackTrace();
    // Handle SQL error here (e.g., show an error message)
    out.println(e);
} finally {
    try {
        if (preparedStatement != null) {
            preparedStatement.close();
        }
        if (conn != null) {
            conn.close();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>
</body>
</html>




--%>
