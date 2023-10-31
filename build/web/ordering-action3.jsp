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
 String quantityStr = request.getParameter("userquantity");
    String price = request.getParameter("price");
    String pricePerKg = request.getParameter("priceperkg");
   
    double quantity = Double.parseDouble(quantityStr); // Input quantity in kg
    double totalPrice2 = Double.parseDouble(pricePerKg);

    double totalPrice = quantity *totalPrice2;
    String currentURL = request.getParameter("currentURL");

    // Retrieve other input values
    String category = request.getParameter("category");
    String email = request.getParameter("email");
    String itemname = request.getParameter("itemname");
    String base64Image = request.getParameter("image");

    // Decode the Base64-encoded image data
    byte[] imageData = Base64.decodeBase64(base64Image);

    // Output the values for testing
    out.println("Quantity (kg): " + quantity);
    out.println("Category: " + category);
    out.println("Price : " + price);
    out.println("Price per Kg : " + pricePerKg);
    
   // out.println("Discount: " + discount + "%");
    out.println("Email: " + email);
    out.println("Item Name: " + itemname);
    out.println("Total Price: " + totalPrice);
    out.println("Image: " + base64Image);

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
            
            // Insert data into the "cart" table
            String cartSql = "INSERT INTO cart (customer_id, item_id, quantity_kgs, price, priceperkg, category, image, booking_status) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = conn.prepareStatement(cartSql);

            preparedStatement.setInt(1, customerId);
            preparedStatement.setInt(2, itemId);
            preparedStatement.setDouble(3, quantity);
            preparedStatement.setDouble(4, totalPrice);
            preparedStatement.setString(5, pricePerKg);
            preparedStatement.setString(6, category);
            preparedStatement.setBytes(7, imageData);
            preparedStatement.setString(8, "pending"); // Set booking status to 'pending'

            int cartRowsInserted = preparedStatement.executeUpdate();

            if (cartRowsInserted > 0) {
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
