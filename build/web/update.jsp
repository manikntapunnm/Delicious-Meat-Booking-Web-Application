












<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Page</title>
</head>
<body>
    <h1>Update Page</h1>
    <%
        // Retrieve GET parameters
        String updatedQuantity = request.getParameter("updatedQuantity");
        String price = request.getParameter("price");
        String customerId = request.getParameter("customerId");
        String itemId = request.getParameter("itemId");
        String email = request.getParameter("email");
         String cartid = request.getParameter("cartid");
         String bookingid = request.getParameter("bookingid");
         double totalPrice = (Double) session.getAttribute("totalPrice");
        // double discountedPrice = (Double) session.getAttribute("discountedPrice");

        // Initialize default values
        double quantityDouble = 0.0;
        double priceDouble = 0.0;
        double result = 0.0;

        // Check if parameters are not null before parsing
        if (updatedQuantity != null && price != null && customerId != null && itemId != null) {
            try {
                // Parse the retrieved parameters as doubles
                quantityDouble = Double.parseDouble(updatedQuantity);
                priceDouble = Double.parseDouble(price);

                // Calculate the result as a double
                result = quantityDouble * priceDouble;

                // Update the cart table in the database
                Connection connection = new Dbconn.dbconn().getConnection();
//                 String updateBookingsSql = "UPDATE bookings SET quantity_kgs = ?, price = ? WHERE booking_id = ? ";
//                PreparedStatement updateBookingsStatement = connection.prepareStatement(updateBookingsSql);
//                updateBookingsStatement.setDouble(1, quantityDouble);
//                updateBookingsStatement.setDouble(2, result);
//                updateBookingsStatement.setString(3, bookingid);
//                
//                int bookingsRowsUpdated = updateBookingsStatement.executeUpdate();
//                updateBookingsStatement.close();
                

String updateSql = "UPDATE cart SET quantity_kgs = ?, price = ? WHERE cart_id = ?";
PreparedStatement updateStatement = connection.prepareStatement(updateSql);
updateStatement.setDouble(1, quantityDouble);
updateStatement.setDouble(2, result);
updateStatement.setString(3, cartid); // Use cartid as the parameter
int rowsUpdated = updateStatement.executeUpdate();
updateStatement.close();

   // Format the result with two decimal places
        String formattedResult = String.format("%.2f", result);
                    // Check if the update was successful
                    if (rowsUpdated > 0) {
                        out.println("Update was successful");
                        response.sendRedirect("customer-cart.jsp?email=" + email+ "&totalPrice=" + formattedResult);
                    } else {
                out.println("Update was failed");
                    // Handle the case where the update did not affect any rows
                }

            } catch (NumberFormatException e) {
                // Handle parsing errors if necessary
                e.printStackTrace();
                out.println(e);
            } catch (SQLException e) {
                // Handle database-related errors
                e.printStackTrace();
                out.println(e);
            }
        }

     
     
    %>
    <p>Updated Quantity: <%= updatedQuantity %></p>
    <p>Price: <%= price %></p>
   
    <p>Customer ID: <%= customerId %></p>
    <p>Item ID: <%= itemId %></p>
     <p>Booking ID: <%= bookingid %></p>
    <p>Email ID: <%= email %></p>

    
</body>
</html>
