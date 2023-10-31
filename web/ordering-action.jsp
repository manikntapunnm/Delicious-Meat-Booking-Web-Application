

<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.nio.channels.Channels" %>
<%@ page import="java.nio.channels.ReadableByteChannel" %>
<%@ page import="Dbconn.dbconn" %>

<!DOCTYPE html>
<html>
<head>
    
</head>
<body>
<%
    // Get the input parameters from the request
    String quantityStr = request.getParameter("userquantity");
    String pricePerKg = request.getParameter("price");
    String discountStr = request.getParameter("discount");

    // Parse the input parameters as appropriate data types
    double quantity = Double.parseDouble(quantityStr); // Input quantity in kg
    double initialPrice = Double.parseDouble(pricePerKg);
    double discount = Double.parseDouble(discountStr);

    // Calculate the total price with discount
    double discountedPricePerKg = initialPrice - (initialPrice * (discount / 100));
    double totalPrice = quantity * discountedPricePerKg;

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
    out.println("Price per Kg : " + pricePerKg);
    
    out.println("Discount: " + discount + "%");
    out.println("Email: " + email);
    out.println("Item Name: " + itemname);
    out.println("Total Price: " + totalPrice);

    // Construct the URL for redirection with query parameters
  String redirectURL = "ordering-action2.jsp?userquantity=" + quantityStr + "&category=" + category + "&price=" + totalPrice + "&email=" + email + "&itemname=" + itemname + "&image=" + base64Image;

            
            
            
            
         // Include other parameters as needed

    // Redirect to the ordering-action2.jsp page with the query parameters
    response.sendRedirect(redirectURL);

    // You can now use the decoded image data for your purposes.
%>




</body>
</html>

