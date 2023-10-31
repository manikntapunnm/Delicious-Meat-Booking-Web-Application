<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64, Dbconn.dbconn" %>
<%@ page import="Dbconn.dbconn"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <!-- Include SweetAlert2 CSS and JavaScript via CDN links -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.15.5/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.15.5/dist/sweetalert2.min.js"></script>
</head>
<body>
<%
    int partnerId = Integer.parseInt(request.getParameter("partnerid"));
    int cartId = Integer.parseInt(request.getParameter("cartid"));

    Connection connection = null;
    PreparedStatement stmt = null;

    try {
        // Initialize your database connection here (e.g., using a DataSource)
        connection = new dbconn().getConnection(); // Assuming you have a Dbconn class

        // Get the value of 'newstatus' parameter
        String newStatus = request.getParameter("newstatus");

        // Determine the value to insert based on 'newstatus'
        Integer valueToInsert = null;
        if ("accepted".equals(newStatus)) {
            valueToInsert = partnerId;
        } else if ("rejected".equals(newStatus)) {
            valueToInsert = null; // Set to null when rejected
        }

        // Assuming you have obtained the partnerId and cartId when the partner accepts or rejects the order.
        String updateCartQuery = "UPDATE cart SET partner_id = ? WHERE cart_id = ?";
        stmt = connection.prepareStatement(updateCartQuery);
        if (valueToInsert != null) {
            stmt.setInt(1, valueToInsert);
        } else {
            stmt.setNull(1, Types.INTEGER); // Set the parameter as NULL
        }
        stmt.setInt(2, cartId);
        stmt.executeUpdate();

        // Display a Swal alert after the update
        if ("accepted".equals(newStatus)) {
            %>
             <script>
                Swal.fire({
                    title: 'Success!',
                    text: 'Partner ID updated successfully!',
                    icon: 'success'
                }).then(function() {
                    // Redirect to index.jsp
                    window.location.href = 'partner_pending_book.jsp';
                });
            </script>
            <%
        } else if ("rejected".equals(newStatus)) {
            %>
             <script>
                Swal.fire({
                    title: 'Rejected!',
                    text: 'Order rejected successfully!',
                    icon: 'error'
                }).then(function() {
                    // Redirect to some other page or stay on the same page as needed
                    window.location.href = 'partner_pending_book.jsp';
                });
            </script>
            <%
        }
    } catch (Exception e) {
        e.printStackTrace();
        // Display a Swal error alert if an exception occurs
        %>
        <script>
            Swal.fire({
                title: 'Error!',
                text: 'An error occurred while updating the partner ID.',
                icon: 'error'
            });
        </script>
        <%
    } finally {
        // Close resources in the reverse order of their creation
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
</body>
</html>
