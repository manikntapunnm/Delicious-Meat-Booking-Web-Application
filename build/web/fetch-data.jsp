<%-- 
    Document   : fetch-data
    Created on : 22-Sept-2023, 4:22:21 pm
    Author     : manikanta
--%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ page import="Dbconn.dbconn" %>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Connection connection = new Dbconn.dbconn().getConnection();
    
    int totalOrders = 0;
    int totalItems = 0;
    int totalCustomers = 0;
    int totalPartners = 0;
    double totalRevenue = 0;
    
    if (connection != null) {
        try {
            // Calculate total orders
            String ordersSql = "SELECT COUNT(*) AS total_orders FROM cart";
            PreparedStatement ordersStatement = connection.prepareStatement(ordersSql);
            ResultSet ordersResult = ordersStatement.executeQuery();
            
            if (ordersResult.next()) {
                totalOrders = ordersResult.getInt("total_orders");
            }
            
            // Calculate total revenue
            String revenueSql = "SELECT SUM(price) AS total_revenue FROM cart";
            PreparedStatement revenueStatement = connection.prepareStatement(revenueSql);
            ResultSet revenueResult = revenueStatement.executeQuery();
            
            if (revenueResult.next()) {
                totalRevenue = revenueResult.getDouble("total_revenue");
            }
            
            // Count total items
            String itemsSql = "SELECT COUNT(*) AS total_items FROM items1";
            PreparedStatement itemsStatement = connection.prepareStatement(itemsSql);
            ResultSet itemsResult = itemsStatement.executeQuery();
            
            if (itemsResult.next()) {
                totalItems = itemsResult.getInt("total_items");
            }
            
            // Count total customers
            String customerSql = "SELECT COUNT(*) AS total_customers FROM customers";
            PreparedStatement customerStatement = connection.prepareStatement(customerSql);
            ResultSet customerResult = customerStatement.executeQuery();
            
            if (customerResult.next()) {
                totalCustomers = customerResult.getInt("total_customers");
            }
            
            // Count total partners
            String partnersSql = "SELECT COUNT(*) AS total_partners FROM partners";
            PreparedStatement partnersStatement = connection.prepareStatement(partnersSql);
            ResultSet partnersResult = partnersStatement.executeQuery();
            
            if (partnersResult.next()) {
                totalPartners = partnersResult.getInt("total_partners");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    
    // Create a JSON object to hold the results
    String jsonData = "{";
    jsonData += "\"totalOrders\":" + totalOrders + ",";
    jsonData += "\"totalCustomers\":" + totalCustomers + ",";
    jsonData += "\"totalItems\":" + totalItems + ",";
    jsonData += "\"totalPartners\":" + totalPartners + ",";
    jsonData += "\"totalRevenue\":" + totalRevenue;
    jsonData += "}";
    
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    response.getWriter().write(jsonData);
%>
