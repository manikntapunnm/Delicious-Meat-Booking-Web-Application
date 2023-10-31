

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="Dbconn.dbconn" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10">
         <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    </head>
    <body>
       

<%
try {

    String email = request.getParameter("email");
    String newStatus = request.getParameter("newstatus");
    String itemId = request.getParameter("itemid");
    String itemName = request.getParameter("itemname");
//    //out.println(email);
    out.println(newStatus);
    out.println(itemId);
//    out.println(itemName);
// Establish a database connection (replace with your database details)
    Connection connection = new Dbconn.dbconn().getConnection();

    // Query the partners table to get partnerid based on email
    String selectSql = "SELECT partner_id FROM partners WHERE email = ?";
    PreparedStatement selectStatement = connection.prepareStatement(selectSql);
    selectStatement.setString(1, email);
    ResultSet resultSet = selectStatement.executeQuery();

    if (resultSet.next()) {
        // Retrieve the partnerid from the result set
        String partnerid = resultSet.getString("partner_id");
     
        selectStatement.close();

        // Retrieve the item name based on item ID (modify this query as needed)
        

        // Update the item table to set partnerid and Item_status where item_name matches
        String updateItemsSql = "UPDATE items1 SET partner_id = ?, Item_status = ? WHERE item_id = ?";
        PreparedStatement updateItemsStatement = connection.prepareStatement(updateItemsSql);
        updateItemsStatement.setString(1, partnerid);
        updateItemsStatement.setString(2, newStatus);
        updateItemsStatement.setString(3, itemId); // Retrieve itemName from session
        int rowsAffected = updateItemsStatement.executeUpdate();
        updateItemsStatement.close();

        // Close the database connection
        

        if (rowsAffected > 0) {
            // Status and partnerid updated successfully

            // Insert partnerid and itemid into the partneritems table
            String insertPartnerItemsSql = "INSERT INTO partneritems (partner_id, item_id) VALUES (?, ?)";
            PreparedStatement insertPartnerItemsStatement = connection.prepareStatement(insertPartnerItemsSql);
            insertPartnerItemsStatement.setString(1, partnerid);
            insertPartnerItemsStatement.setString(2, itemId); // Replace 'itemId' with the actual item ID
            int insertionResultPartnerItems = insertPartnerItemsStatement.executeUpdate();
            insertPartnerItemsStatement.close();

            // Now you can use the retrieved partnerid as needed
            String successMessage = "Updated successfully. Partnerid: " + partnerid;
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'success',");
            out.println("  title: 'Success',");
            out.println("  text: '" + successMessage + "',");
            out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
            out.println("</script>");
        } else {
            // Handle the case where no rows were updated in the items table
            String errorMessage = "Error: No matching item found or no rows updated.";
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'error',");
            out.println("  title: 'Error',");
            out.println("  text: '" + errorMessage + "',");
            out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
            out.println("</script>");
        }
    } else {
        // Handle the case where no matching email is found in the partners table
        String errorMessage = "Error: No matching email found in partners table.";
        out.println("<script>");
        out.println("Swal.fire({");
        out.println("  icon: 'error',");
        out.println("  title: 'Error',");
        out.println("  text: '" + errorMessage + "',");
        out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
        out.println("</script>");
    }
    connection.close();
} catch (Exception e) {
    e.printStackTrace();
    // Handle any potential exceptions here and redirect to an error page
    out.println(e);
}
%>
    </body>
</html>