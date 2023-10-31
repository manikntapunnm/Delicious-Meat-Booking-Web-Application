<%-- 
    Document   : admin-login-action
    Created on : 02-Sept-2023, 2:01:19 pm
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
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
   
    Connection connection = dbconn.getConnection();

    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery("SELECT * FROM admin WHERE username='" + username + "' AND password='" + password + "'");
    
    if (resultSet.next()) {
        //session.setAttribute("username", username);
        session.setAttribute("msg", "Success");
        response.sendRedirect("admin-dashboard.jsp");
    } else {
        session.setAttribute("msg", "Failed");
        response.sendRedirect("admin-login.jsp");
    }
    
    connection.close();
} catch (Exception e) {
    out.print(e);
}
%>
    </body>
</html>
