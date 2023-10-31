

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
       


<%--
try {
    String email = request.getParameter("email");
    String newStatus = request.getParameter("newstatus");
    String itemId = request.getParameter("itemid");
    String itemName = request.getParameter("itemname");
////out.println(email);
//out.println(newStatus);
//out.println(itemId);
//out.println(itemName);

    Connection connection = new Dbconn.dbconn().getConnection();

    // Query the partners table to get partnerid based on email
    String selectSql = "SELECT partner_id FROM items1 WHERE item_name = ?";
    PreparedStatement selectStatement = connection.prepareStatement(selectSql);
    selectStatement.setString(1, itemName);
    ResultSet resultSet = selectStatement.executeQuery();

    if (resultSet.next()) {
        // Retrieve the partnerid from the result set
        String partnerid = resultSet.getString("partner_id");

        selectStatement.close();

        // Update the items table with the new status
        String updateItemsSql = "UPDATE items SET Item_status = ? WHERE item_name = ? AND partner_id = ?";
        PreparedStatement updateItemsStatement = connection.prepareStatement(updateItemsSql);
        updateItemsStatement.setString(1, newStatus);
        updateItemsStatement.setString(2, itemName);
        updateItemsStatement.setString(3, partnerid);

        int rowsAffected = updateItemsStatement.executeUpdate();
        updateItemsStatement.close();

        if (rowsAffected > 0) {
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
        // Handle the case where no matching item name is found in the items table
        String errorMessage = "Error: No matching item name found in items table.";
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
--%>


<%
try {
    String email = request.getParameter("email");
    String newStatus = request.getParameter("newstatus");
    String itemId = request.getParameter("itemid");
    String itemName = request.getParameter("itemname");
     String category = request.getParameter("category");
 out.println("Status:"+newStatus);
    out.println("itemid:"+itemId);
    
    Connection connection = new Dbconn.dbconn().getConnection();

    // Query the partners table to get partnerid based on email
    String selectSql = "SELECT partner_id FROM partners WHERE email = ?";
    PreparedStatement selectStatement = connection.prepareStatement(selectSql);
    selectStatement.setString(1, email);
    ResultSet resultSet = selectStatement.executeQuery();

    if (resultSet.next()) {
        // Retrieve the partnerid from the result set
        String partnerid = resultSet.getString("partner_id");
        out.println("partnerid:"+partnerid);

        selectStatement.close();

        
         String updateItemsSql = "UPDATE items1 SET Item_status = ? WHERE item_id = ?";
      
        PreparedStatement updateItemsStatement = connection.prepareStatement(updateItemsSql);
        updateItemsStatement.setString(1, newStatus);
        updateItemsStatement.setString(2, itemId);
        //updateItemsStatement.setString(3, partnerid);

        int rowsAffected = updateItemsStatement.executeUpdate();
        updateItemsStatement.close();

//        if (rowsAffected > 0) {
            
//           String updatePartnerItemsSql = "UPDATE partneritems SET item_id = null WHERE partner_id = ?";
//    PreparedStatement updatePartnerItemsStatement = connection.prepareStatement(updatePartnerItemsSql);
//    updatePartnerItemsStatement.setString(1, partnerid);
//
//    int rowsUpdated = updatePartnerItemsStatement.executeUpdate();
//    updatePartnerItemsStatement.close();

                if (rowsAffected > 0) {
                    // Rest of your code for handling success
                    String successMessage = "Updated successfully. Partnerid: " + partnerid + " ItemId: " + itemId;
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'success',");
                    out.println("  title: 'Success',");
                    out.println("  text: '" + successMessage + "',");
                    out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
                    out.println("</script>");
                } else {
                    // Handle the case where no rows were deleted in the partneritems table
                    String errorMessage = "Error: No matching partneritemid found in partneritems table.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
                    out.println("</script>");
                }
//            } else {
//                // Handle the case where no matching partneritemid is found in the partneritems table
//                String errorMessage = "Error: No matching partneritemid found in partneritems table.";
//                out.println("<script>");
//                out.println("Swal.fire({");
//                out.println("  icon: 'error',");
//                out.println("  title: 'Error',");
//                out.println("  text: '" + errorMessage + "',");
//                out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
//                out.println("</script>");
//            }
//        } else {
//            // Handle the case where no rows were updated in the items table
//            String errorMessage = "Error: No matching item found or no rows updated.";
//            out.println("<script>");
//            out.println("Swal.fire({");
//            out.println("  icon: 'error',");
//            out.println("  title: 'Error',");
//            out.println("  text: '" + errorMessage + "',");
//            out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
//            out.println("</script>");
//        }
    } else {
        // Handle the case where no matching item name is found in the items table
        String errorMessage = "Error: No matching item name found in items table.";
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


