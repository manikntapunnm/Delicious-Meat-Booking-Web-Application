<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>







<!DOCTYPE html>
<html>
<head>
    <title>Test Swal</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    

<%
try {
    // Retrieve form data
    String email = request.getParameter("email");
    String newStatus = request.getParameter("newstatus"); // Add this line to get the new status
    
    Connection con = new Dbconn.dbconn().getConnection();
    PreparedStatement ps;

    ps = con.prepareStatement("UPDATE partners SET partstatus = ? WHERE email = ?");
    ps.setString(1, newStatus); // Set the new status
    ps.setString(2, email); // Set the email parameter
out.println(newStatus);
//out.println(email);

    int rowsUpdated = ps.executeUpdate();
    con.close();

    String swalScript = "";
    if (rowsUpdated > 0) {
        swalScript = "Swal.fire({ icon: 'success', title: 'Status Updated', text: 'Status updated successfully.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) {";
        swalScript += " window.location.href = 'partner_all.jsp';"; // Redirect to partner_pending.jsp
        swalScript += " }});";
    } else {
        swalScript = "Swal.fire({ icon: 'error', title: 'Error', text: 'Error updating status.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) { ";
        swalScript += " window.location.href = 'partner_pending.jsp';"; // Redirect to partner_pending.jsp
        swalScript += " }});";
    }

    // Output the SweetAlert script
    out.println("<script>" + swalScript + "</script>");
} catch (Exception e) {
    e.printStackTrace();
    String swalScript = "Swal.fire({ icon: 'error', title: 'Error', text: 'An error occurred.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) { window.location.href = 'admin-viewde-jb.jsp'; } });";
    out.println("<script>" + swalScript + "</script>");
}
%>




</body>
</html>