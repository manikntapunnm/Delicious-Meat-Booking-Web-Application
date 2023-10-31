<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>

    <!-- Include SweetAlert CDN links -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.14.1/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.14.1/dist/sweetalert2.all.min.js"></script>
</head>
<body>
    <%@ page import="java.sql.*"%>
    <%@ page import="Dbconn.dbconn"%>

    <%
    try {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Connection connection = new Dbconn.dbconn().getConnection();
        Statement statement = connection.createStatement();

        ResultSet resultSet = statement.executeQuery("SELECT * FROM partners WHERE email='" + email + "' AND password='" + password + "'");

        if (resultSet.next()) {
            String partstatus = resultSet.getString("partstatus");

            if ("Accepted".equals(partstatus)) {
                // Partner has been accepted, proceed to the dashboard
                session.setAttribute("email", email);
                session.setAttribute("loginaction", "Success");
                 session.setAttribute("partner_id", resultSet.getString("partner_id")); // Set partner_id in session
                response.sendRedirect("partner-dashboard.jsp?email=" + session.getAttribute("email"));
            } else if ("Pending".equals(partstatus)) {
                // Partner is pending approval, show a Swal alert
    %>
                <script>
                    Swal.fire({
                        icon: 'info',
                        title: 'Pending Approval',
                        text: 'Your account is pending approval by the admin. Please wait for approval.',
                        confirmButtonText: 'OK',
                        allowOutsideClick: false
                    }).then((result) => {
                        if (result.isConfirmed) {
                            window.location.href = 'partner-login.jsp';
                        }
                    });
                </script>
    <%
            } else {
                // Handle other status values if needed
                session.setAttribute("loginaction", "Failed");
                response.sendRedirect("partner-login.jsp?email=" + session.getAttribute("email"));
            }
        } else {
            session.setAttribute("loginaction", "Failed");
            response.sendRedirect("partner-login.jsp?email=" + session.getAttribute("email"));
        }

        connection.close();
    } catch (Exception e) {
        out.print(e);
    }
    %>
</body>
</html>
