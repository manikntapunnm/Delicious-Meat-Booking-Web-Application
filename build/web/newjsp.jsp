<%-- 
    Document   : newjsp
    Created on : 22-Sept-2023, 4:23:13 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bar Graph</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div style="display: flex; justify-content: center; align-items: center; height: 70vh;">
        <canvas id="myBarChart" width="300" height="150"></canvas>
    </div>

     Include the separate JavaScript file 
    <script src="chart.js"></script>
</body>
</html>-->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bar Graph</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div style="display: flex; justify-content: center; align-items: center; height: 70vh;">
        <canvas id="myBarChart" width="400" height="200"></canvas>
    </div>


    <script src="chart.js"></script>
    
    
        <div>
        <p>Total Orders: <span id="totalOrdersValue"></span></p>
        <p>Total Items: <span id="totalItemsValue"></span></p>
        <p>Total Revenue: <span id="totalRevenueValue"></span></p>
    </div>

    <!-- Include the separate JavaScript file -->
</body>
</html>
