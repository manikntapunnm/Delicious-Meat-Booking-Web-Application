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
String quantity = request.getParameter("quantity");
String category = request.getParameter("category");

int customerid = Integer.parseInt(request.getParameter("customerid"));
int cartid = Integer.parseInt(request.getParameter("cartid"));

String price = request.getParameter("price");
String priceperkg = request.getParameter("priceperkg"); // This parameter should be passed from your form

String base64Image = request.getParameter("image");

out.println("Quantity: " + quantity);
out.println("Category: " + category);

out.println("Customer ID: " + customerid);

out.println("Price: " + price);
out.println("Price Per Kg: " + priceperkg);

byte[] imageData = Base64.decodeBase64(base64Image);

Connection conn = null;
PreparedStatement preparedStatement = null;

try {
    conn = new Dbconn.dbconn().getConnection();

    // Insert data into the "bookings" table
    String bookingSql = "INSERT INTO bookings (customer_id, cart_id, quantity_kgs, price, priceperkg, category, image,payment) VALUES (?,?, ?, ?, ?, ?, ?, ?)";
    preparedStatement = conn.prepareStatement(bookingSql, Statement.RETURN_GENERATED_KEYS);

    preparedStatement.setInt(1, customerid);
    preparedStatement.setInt(2, cartid);
    preparedStatement.setString(3, quantity);
    preparedStatement.setString(4, price);
    preparedStatement.setString(5, priceperkg);
    preparedStatement.setString(6, category);
    preparedStatement.setBytes(7, imageData);
    preparedStatement.setString(8, "Paid");

    int bookingRowsInserted = preparedStatement.executeUpdate();

    if (bookingRowsInserted > 0) {
        // Update booking status in the "cart" table
        String updateCartSql = "UPDATE cart SET booking_status = 'Placed' WHERE customer_id = ?";
        PreparedStatement updateCartStatement = conn.prepareStatement(updateCartSql);
        updateCartStatement.setInt(1, customerid);

        int cartRowsUpdated = updateCartStatement.executeUpdate();
        updateCartStatement.close();

        if (cartRowsUpdated > 0) {
            String successMessage = "Ordered successfully.";
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'success',");
            out.println("  title: 'Success',");
            out.println("  text: '" + successMessage + "',");
            out.println("}).then(function() { window.location.href = 'customer_mybookings.jsp?category=" + category + "'; });");
            out.println("</script>");
        } else {
            String errorMessage = "Error updating booking status.";
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'error',");
            out.println("  title: 'Error',");
            out.println("  text: '" + errorMessage + "',");
            out.println("}).then(function() { window.location.href = 'customer_mybookings.jsp?category=" + category + "'; });");
            out.println("</script>");
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


<%--@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
String quantity = request.getParameter("quantity");
String category = request.getParameter("category");
int itemid = Integer.parseInt(request.getParameter("itemid"));
int customerid = Integer.parseInt(request.getParameter("customerid"));
int cartid = Integer.parseInt(request.getParameter("cartid"));

String price = request.getParameter("price");
String priceperkg = request.getParameter("priceperkg"); // This parameter should be passed from your form

String base64Image = request.getParameter("image");

out.println("Quantity: " + quantity);
out.println("Category: " + category);
out.println("Item ID: " + itemid);
out.println("Customer ID: " + customerid);

out.println("Price: " + price);
out.println("Price Per Kg: " + priceperkg);

byte[] imageData = Base64.decodeBase64(base64Image);

Connection conn = null;
PreparedStatement preparedStatement = null;

try {
    conn = new Dbconn.dbconn().getConnection();

    // Insert data into the "bookings" table
    String bookingSql = "INSERT INTO bookings (customer_id, item_id, quantity_kgs, price, priceperkg, category, image) VALUES (?, ?, ?, ?, ?, ?, ?)";
    preparedStatement = conn.prepareStatement(bookingSql, Statement.RETURN_GENERATED_KEYS);

    preparedStatement.setInt(1, customerid);
    preparedStatement.setInt(2, itemid);
    preparedStatement.setString(3, quantity);
    preparedStatement.setString(4, price);
    preparedStatement.setString(5, priceperkg);
    preparedStatement.setString(6, category);
    preparedStatement.setBytes(7, imageData);

    int bookingRowsInserted = preparedStatement.executeUpdate();

    if (bookingRowsInserted > 0) {
        // Delete the row from the "cart" table using cartid
        String deleteCartSql = "DELETE FROM cart WHERE customer_id = ?";
        PreparedStatement deleteCartPreparedStatement = conn.prepareStatement(deleteCartSql);

        deleteCartPreparedStatement.setInt(1, customerid);

        int cartRowsDeleted = deleteCartPreparedStatement.executeUpdate();
        deleteCartPreparedStatement.close();

        if (cartRowsDeleted > 0) {
            String successMessage = "Ordered successfully.";
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'success',");
            out.println("  title: 'Success',");
            out.println("  text: '" + successMessage + "',");
            out.println("}).then(function() { window.location.href = 'freshmeat.jsp?category=" + category + "'; });");
            out.println("</script>");
        } else {
            String errorMessage = "Error removing item from cart.";
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'error',");
            out.println("  title: 'Error',");
            out.println("  text: '" + errorMessage + "',");
            out.println("}).then(function() { window.location.href = 'customer_mybookings.jsp?category=" + category + "'; });");
            out.println("</script>");
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

</body>
</html>
--%>