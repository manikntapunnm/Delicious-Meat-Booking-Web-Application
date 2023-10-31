<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="Dbconn.dbconn" %>

<%
    String email = request.getParameter("email");
    String cartid = request.getParameter("cartid");

    Connection connection = null;
    Statement st = null;

    try {
        connection = new Dbconn.dbconn().getConnection();
        st = connection.createStatement();

        int rowsAffected = st.executeUpdate("DELETE FROM cart WHERE cart_id='" + cartid + "'");

        if (rowsAffected > 0) {
                   
            String successMessage = "Cart item removed successfully.";
request.getSession().setAttribute("successMessage", successMessage);
response.sendRedirect("customer-cart.jsp");
     
        } else {
            out.println("error");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        // Handle the SQL error as needed
        out.println(e); // Redirect to an appropriate error page or URL
    } finally {
        // Close the resources in the reverse order of their creation
        try {
            if (st != null) {
                st.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println(e);
            // Handle the closing error if needed
        }
    }
%>
</body>
</html>
