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
    String id = request.getParameter("id");
    out.println(id);
    String newStatus = request.getParameter("newstatus"); // Add this line to get the new status
//    //out.println(email);
//    out.println(newStatus);
    Connection con = new Dbconn.dbconn().getConnection();
    PreparedStatement ps;

    ps = con.prepareStatement("UPDATE partners SET partstatus = ? WHERE partner_id = ?");
    ps.setString(1, newStatus); // Set the new status
    ps.setString(2, id); // Set the email parameter

    int rowsUpdated = ps.executeUpdate();
    con.close();

  String swalScript = "";
if (rowsUpdated > 0) {
    swalScript = "Swal.fire({ icon: 'success', title: 'Status Updated', text: 'Status updated successfully.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) {";
    swalScript += " window.location.href = 'partner_all.jsp'";
    swalScript += " }});";
} else {
    swalScript = "Swal.fire({ icon: 'error', title: 'Error', text: 'Error updating status.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) { ";
    swalScript += " window.location.href = 'partner_all.jsp'";
    swalScript += " }});";
}

// Output the SweetAlert script
out.println("<script>" + swalScript + "</script>");

} catch (Exception e) {
    e.printStackTrace();
    
    out.println(e);
}
%>



</body>
</html>