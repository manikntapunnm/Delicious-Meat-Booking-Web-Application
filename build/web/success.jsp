<%-- 
    Document   : success
    Created on : 13-Oct-2023, 5:23:01 pm
    Author     : manikanta
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.io.*" %>

<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

    <div class="container mt-3">
        <h2>Payment has been successful</h2>
        <%
            String paymentid= request.getParameter("paymentid");
            %>
        <div class="alert alert-success">
            <strong>Please note your payment id!</strong>
            <%= paymentid %>
        </div>

        <div id="countdown" class="mt-3"></div>

        <script>
            // Countdown function
            function startCountdown(seconds, targetUrl) {
                var countdownElement = document.getElementById('countdown');
                countdownElement.innerHTML = 'Redirecting in ' + seconds + ' seconds...';

                var countdownInterval = setInterval(function() {
                    seconds--;
                    countdownElement.innerHTML = 'Redirecting in ' + seconds + ' seconds...';

                    if (seconds <= 0) {
                        clearInterval(countdownInterval);
                        window.location.href = targetUrl; // Redirect after countdown
                    }
                }, 1000);
            }

            // Start the countdown (5000 milliseconds = 5 seconds)
            startCountdown(5, 'customer_mybookings.jsp');
        </script>
    </div>

</body>
</html>
