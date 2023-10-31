<%-- 
    Document   : customer-login-action
    Created on : 02-Sept-2023, 2:02:47 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    ResultSet resultSet = statement.executeQuery("SELECT * FROM customers WHERE email='" + email + "' AND password='" + password + "'");
    
    if (resultSet.next()) {
        session.setAttribute("email", email);
  
        session.setAttribute("login", "Success");
        response.sendRedirect("customer_dashboard.jsp?email=" + session.getAttribute("email"));
    } else {
        session.setAttribute("login", "Failed");
        response.sendRedirect("customer-login.jsp?email=" + session.getAttribute("email"));
        
    }
    
    connection.close();
} catch (Exception e) {
    out.print(e);
}
%>

    </body>
</html>
