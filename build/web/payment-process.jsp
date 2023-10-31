<%-- 
    Document   : payment-process
    Created on : 13-Oct-2023, 5:32:54 pm
    Author     : manikanta
--%>

<%@ page import="Dbconn.dbconn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>

<%
    Connection conn = null;
    PreparedStatement pstmt1 = null;
    PreparedStatement pstmt2 = null;

    try {
        String paymentId = request.getParameter("paymentid");
        String bookingId = request.getParameter("bookingid");
        String customerId = request.getParameter("customerid");
        
        //out.println("Payment ID:"+paymentId);
        
        conn = dbconn.getConnection();

        // First SQL statement
        String sql1 = "UPDATE bookings1 SET payment_id = ?, payment = 'Paid' WHERE booking_id = ?";
        pstmt1 = conn.prepareStatement(sql1);
        pstmt1.setString(1, paymentId);
        pstmt1.setString(2, bookingId);

        int result1 = pstmt1.executeUpdate();

        // Close the first PreparedStatement before creating the second one
        pstmt1.close();

        // Second SQL statement
        String sql2 = "UPDATE cart SET booking_status = 'Checked' WHERE booking_id = ? AND customer_id = ? AND booking_status = 'Pending'";
        pstmt2 = conn.prepareStatement(sql2);
        pstmt2.setString(1, bookingId);
        pstmt2.setString(2, customerId);

        int result2 = pstmt2.executeUpdate();

        if (result1 > 0 && result2 > 0) {
            out.println("done");
            session.setAttribute("paymentId", paymentId);
        } else {
            out.println("Error in database operation.");
        }
    } catch (SQLException e) {
        out.println("SQLException: " + e.getMessage());
    } finally {
        try {
            // Close resources in the finally block
            if (pstmt1 != null) {
                pstmt1.close();
            }
            if (pstmt2 != null) {
                pstmt2.close();
            }
            if (conn != null && !conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException e) {
            out.println("SQLException: " + e.getMessage());
        }
    }
%>
