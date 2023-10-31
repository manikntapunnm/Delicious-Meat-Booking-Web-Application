<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cart Page</title>
</head>
<body>
    <%
        String discountprice = request.getParameter("discountprice");
        String priceperkg = request.getParameter("priceperkg");
        String category = request.getParameter("category");
        String email = request.getParameter("email");
        String itemid = request.getParameter("itemid");

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Establish the database connection
            conn = new Dbconn.dbconn().getConnection();

            // Retrieve item details from items1 table
            String selectItemSql = "SELECT * FROM items1 WHERE item_id = ?";
            pstmt = conn.prepareStatement(selectItemSql);
            pstmt.setString(1, itemid);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                String quantity = rs.getString("quantity");
                String itemName = rs.getString("item_name");
                byte[] imageDataBytes = rs.getBytes("item_image");
                String base64Image = java.util.Base64.getEncoder().encodeToString(imageDataBytes);
                byte[] imageData = Base64.decodeBase64(base64Image);

                // Retrieve customer ID based on email
                String selectCustomerSql = "SELECT customer_id FROM customers WHERE email = ?";
                pstmt = conn.prepareStatement(selectCustomerSql);
                pstmt.setString(1, email);
                rs = pstmt.executeQuery();

                if (rs.next()) {
                    String customerId = rs.getString("customer_id");

                    // Insert details into the cart table
                    String insertCartSql = "INSERT INTO cart (customer_id, item_id, quantity_kgs, price, priceperkg, category, image) VALUES ( ?, ?, ?, ?, ?, ?, ?)";
                    pstmt = conn.prepareStatement(insertCartSql);
                    pstmt.setString(1, customerId);
                    pstmt.setString(2, itemid);
                    pstmt.setString(3, quantity);
                    pstmt.setString(4, discountprice);
                    pstmt.setString(5, priceperkg);
                    pstmt.setString(6, category);
                    pstmt.setBytes(7, imageData);

                    int result = pstmt.executeUpdate();

                    if (result > 0) {
                        out.println("Item added to the cart successfully");
                          response.sendRedirect("item.jsp?email=" + email + "&category=" +category);
                    } else {
                        out.println("Error adding item to the cart");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        } finally {
          
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("Error closing resources: " + e.getMessage());
            }
        }
    %>
</body>
</html>
