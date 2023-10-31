<%@page import="java.io.InputStream"%>
<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Wishlist Page</title>
</head>
<body>
<%
    String discountprice = request.getParameter("discountprice");
    String priceperkg = request.getParameter("priceperkg");
    String category = request.getParameter("category");
    String email = request.getParameter("email");
   
    String itemid = request.getParameter("itemid");

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        // Establish the database connection (replace with your connection details)
        conn = new Dbconn.dbconn().getConnection();

        String sql = "SELECT * FROM items1 WHERE item_id = " + itemid;
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);

        while (rs.next()) {
            String quantity = rs.getString("quantity");
             //out.println(quantity);
            byte[] imageDataBytes = rs.getBytes("item_image");
             String base64Image = java.util.Base64.getEncoder().encodeToString(imageDataBytes);
             InputStream imageDataStream = rs.getBinaryStream("item_image");

             String insertSql = "INSERT INTO wishlist (price, priceperkg, quantity_kgs, category, image,`customer-email`) VALUES ( ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement insertStmt = conn.prepareStatement(insertSql)) {
              
                insertStmt.setString(1, discountprice);
                insertStmt.setString(2, priceperkg);
                insertStmt.setString(3, quantity);
                insertStmt.setString(4, category);
                 if (imageDataStream != null) {
                    insertStmt.setBlob(5, imageDataStream);
                } else {
                    // Handle the case when there's no image data
                    insertStmt.setNull(5, Types.BLOB);
                }
                insertStmt.setString(6, email);
                int rowsAffected = insertStmt.executeUpdate();
                if (rowsAffected > 0) {
                    out.println("Item added to wishlist successfully!");
                      response.sendRedirect("item.jsp?email=" + email + "&category=" +category);
                    return;
                } else {
                    out.println("Failed to add item to wishlist.");
                }
            }

             
             
             
             
        }
    } catch ( SQLException e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        // Close resources in the finally block
        try {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("Error closing resources: " + e.getMessage());
        }
    }

    out.println(discountprice);
    out.println(priceperkg);
    out.println(email);
    out.println(itemid);
    out.println(category);
   
%>
</body>
</html>
