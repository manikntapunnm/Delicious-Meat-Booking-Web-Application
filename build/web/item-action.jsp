
<%--@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

        // Check if a record with the same partner_id and item_id already exists
        String checkItemSql = "SELECT COUNT(*) AS count FROM partneritems WHERE partner_id = ? AND item_id = ?";
        PreparedStatement checkItemStatement = connection.prepareStatement(checkItemSql);
        checkItemStatement.setString(1, partnerid);
        checkItemStatement.setString(2, itemId);
        ResultSet checkResult = checkItemStatement.executeQuery();

        if (checkResult.next() && checkResult.getInt("count") > 0) {
            // Handle the case where the combination already exists
            String errorMessage = "Error: Combination of Partnerid: " + partnerid + " already has Itemid: " + itemId;
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'info',");
            out.println("  title: 'Please Check Once Again',");
            out.println("  text: '" + errorMessage + "',");
            out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
            out.println("</script>");
        } else {
            // Check if a record with the same partner_id and a null item_id exists
            String checkNullItemSql = "SELECT COUNT(*) AS count FROM partneritems WHERE partner_id = ? AND item_id IS NULL";
            PreparedStatement checkNullItemStatement = connection.prepareStatement(checkNullItemSql);
            checkNullItemStatement.setString(1, partnerid);
            ResultSet nullItemResult = checkNullItemStatement.executeQuery();

            if (nullItemResult.next() && nullItemResult.getInt("count") > 0) {
                // If a record exists with the same partner_id and a null item_id, update it
                String updateItemSql = "UPDATE partneritems SET item_id = ? WHERE partner_id = ? AND item_id IS NULL";
                PreparedStatement updateItemStatement = connection.prepareStatement(updateItemSql);
                updateItemStatement.setString(1, itemId);
                updateItemStatement.setString(2, partnerid);
                int rowsAffected = updateItemStatement.executeUpdate();
                updateItemStatement.close();

                if (rowsAffected > 0) {
                    // Handle successful update
                    String successMessage = "Updated successfully. Partnerid: " + partnerid + ", Itemid: " + itemId;
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'success',");
                    out.println("  title: 'Success',");
                    out.println("  text: '" + successMessage + "',");
                    out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
                    out.println("</script>");
                } else {
                    // Handle the case where no rows were updated
                    String errorMessage = "Update Failed";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
                    out.println("</script>");
                }
            } else {
                // If the combination does not exist, insert a new record
                String insertPartnerItemSql = "INSERT INTO partneritems (partner_id, item_id) VALUES (?, ?)";
                PreparedStatement insertPartnerItemStatement = connection.prepareStatement(insertPartnerItemSql);
                insertPartnerItemStatement.setString(1, partnerid);
                insertPartnerItemStatement.setString(2, itemId);
                int insertionResult = insertPartnerItemStatement.executeUpdate();
                insertPartnerItemStatement.close();

                if (insertionResult > 0) {
                    // Handle successful insertion
                    String successMessage = "Inserted successfully. Partnerid: " + partnerid + ", Itemid: " + itemId;
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'success',");
                    out.println("  title: 'Success',");
                    out.println("  text: '" + successMessage + "',");
                    out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
                    out.println("</script>");
                } else {
                    // Handle the case where the insertion failed
                    String errorMessage = "Error: Failed to insert record. Partnerid: " + partnerid + ", Itemid: " + itemId;
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
                    out.println("</script>");
                }
            }
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
</html>--%>


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

        // Check if a record with the same partner_id and item_id already exists
        String checkItemSql = "SELECT COUNT(*) AS count FROM partneritems WHERE partner_id = ? AND item_id = ?";
        PreparedStatement checkItemStatement = connection.prepareStatement(checkItemSql);
        checkItemStatement.setString(1, partnerid);
        checkItemStatement.setString(2, itemId);
        ResultSet checkResult = checkItemStatement.executeQuery();

        if (checkResult.next() && checkResult.getInt("count") > 0) {
            // Handle the case where the combination already exists
            String errorMessage = "Error: Combination of Partnerid: " + partnerid + " already has Itemid: " + itemId;
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'info',");
            out.println("  title: 'Please Check Once Again',");
            out.println("  text: '" + errorMessage + "',");
            out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
            out.println("</script>");
        } else {
            // Check if a record with the same partner_id and a null item_id exists
            String checkNullItemSql = "SELECT COUNT(*) AS count FROM partneritems WHERE partner_id = ? AND item_id IS NULL";
            PreparedStatement checkNullItemStatement = connection.prepareStatement(checkNullItemSql);
            checkNullItemStatement.setString(1, partnerid);
            ResultSet nullItemResult = checkNullItemStatement.executeQuery();

            if (nullItemResult.next() && nullItemResult.getInt("count") > 0) {
                // If a record exists with the same partner_id and a null item_id, update it
                String existingItemId = nullItemResult.getString("item_id");
                if (existingItemId == null) {
                    // Update the record with the new item_id
                    String updateItemSql = "UPDATE partneritems SET item_id = ? WHERE partner_id = ? AND item_id IS NULL";
                    PreparedStatement updateItemStatement = connection.prepareStatement(updateItemSql);
                    updateItemStatement.setString(1, itemId);
                    updateItemStatement.setString(2, partnerid);
                    int rowsAffected = updateItemStatement.executeUpdate();
                    updateItemStatement.close();

                    if (rowsAffected > 0) {
                        // Handle successful update
                        String successMessage = "Updated successfully. Partnerid: " + partnerid + ", Itemid: " + itemId;
                        out.println("<script>");
                        out.println("Swal.fire({");
                        out.println("  icon: 'success',");
                        out.println("  title: 'Success',");
                        out.println("  text: '" + successMessage + "',");
                        out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
                        out.println("</script>");
                    } else {
                        // Handle the case where no rows were updated
                        String errorMessage = "Update Failed";
                        out.println("<script>");
                        out.println("Swal.fire({");
                        out.println("  icon: 'error',");
                        out.println("  title: 'Error',");
                        out.println("  text: '" + errorMessage + "',");
                        out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
                        out.println("</script>");
                    }
                } else {
                    // Handle the case where the record already has a non-null item_id
                    String errorMessage = "Error: Combination of Partnerid: " + partnerid + " already has Itemid: " + existingItemId;
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'info',");
                    out.println("  title: 'Please Check Once Again',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
                    out.println("</script>");
                }
            } else {
                // If the combination does not exist, insert a new record
                String insertPartnerItemSql = "INSERT INTO partneritems (partner_id, item_id) VALUES (?, ?)";
                PreparedStatement insertPartnerItemStatement = connection.prepareStatement(insertPartnerItemSql);
                insertPartnerItemStatement.setString(1, partnerid);
                insertPartnerItemStatement.setString(2, itemId);
                int insertionResult = insertPartnerItemStatement.executeUpdate();
                insertPartnerItemStatement.close();

                if (insertionResult > 0) {
                    // Handle successful insertion
                    String successMessage = "Inserted successfully. Partnerid: " + partnerid + ", Itemid: " + itemId;
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'success',");
                    out.println("  title: 'Success',");
                    out.println("  text: '" + successMessage + "',");
                    out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
                    out.println("</script>");
                } else {
                    // Handle the case where the insertion failed
                    String errorMessage = "Error: Failed to insert record. Partnerid: " + partnerid + ", Itemid: " + itemId;
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
                    out.println("</script>");
                }
            }
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

    // Update the item_status in the items1 table where item_id matches
    String updateItemStatusSql = "UPDATE items1 SET item_status = ? WHERE item_id = ?";
    PreparedStatement updateItemStatusStatement = connection.prepareStatement(updateItemStatusSql);
    updateItemStatusStatement.setString(1, newStatus);
    updateItemStatusStatement.setString(2, itemId);
    int rowsAffectedItemStatus = updateItemStatusStatement.executeUpdate();
    updateItemStatusStatement.close();

    if (rowsAffectedItemStatus > 0) {
        // Handle successful item_status update
        String successMessageItemStatus = "Item status updated successfully. Itemid: " + itemId + ", New Status: " + newStatus;
        out.println("<script>");
        out.println("Swal.fire({");
        out.println("  icon: 'success',");
        out.println("  title: 'Success',");
        out.println("  text: '" + successMessageItemStatus + "',");
        out.println("}).then(function() { window.location.href = 'partner_all_bookings.jsp'; });");
        out.println("</script>");
    } else {
        // Handle the case where no rows were updated in the items1 table
        String errorMessageItemStatus = "Error: Failed to update item status.";
        out.println("<script>");
        out.println("Swal.fire({");
        out.println("  icon: 'error',");
        out.println("  title: 'Error',");
        out.println("  text: '" + errorMessageItemStatus + "',");
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

