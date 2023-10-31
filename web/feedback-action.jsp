<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.IOException, java.sql.Connection, java.sql.PreparedStatement, java.sql.SQLException" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Action</title>
    <!-- Include SweetAlert CDN links -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.14.1/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.14.1/dist/sweetalert2.all.min.js"></script>
</head>
<body>
    <h1>Feedback Action</h1>

    <%
        String email = request.getParameter("email");
        String message = request.getParameter("message");
        String rating = request.getParameter("rating");
        String item = request.getParameter("item");

        // Establish a database connection (replace with your database connection logic)
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Replace with your database connection logic
            connection = new Dbconn.dbconn().getConnection();

            // Check if feedback for this item with this email already exists
            String checkExistingFeedbackSql = "SELECT * FROM feedback WHERE email = ? AND item = ?";
            preparedStatement = connection.prepareStatement(checkExistingFeedbackSql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, item);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // Show a Swal alert for duplicate feedback
    %>
                <script>
                    Swal.fire({
                        icon: 'error',
                        title: 'Feedback Already Given',
                        text: 'Feedback for this item with this email already exists.',
                        confirmButtonText: 'OK',
                        allowOutsideClick: false
                    }).then((result) => {
                        if (result.isConfirmed) {
                            window.location.href = 'customer_feedback.jsp';
                        }
                    });
                </script>
    <%
            } else {
                // Feedback doesn't exist, proceed to insert
                // Retrieve customer information
                String selectCustomerSql = "SELECT firstname, image FROM customers WHERE email = ?";
                preparedStatement = connection.prepareStatement(selectCustomerSql);
                preparedStatement.setString(1, email);
                resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    String customerName = resultSet.getString("firstname");
                    byte[] customerImageDataBytes = resultSet.getBytes("image");

                    // Calculate sentiment based on the average rating
                    String sentiment;
                    double averageRating = Double.parseDouble(rating); // Assuming rating is a double
                    if (averageRating >= 0 && averageRating < 1) {
                        sentiment = "Very Negative";
                    } else if (averageRating >= 1 && averageRating < 2) {
                        sentiment = "Negative";
                    } else if (averageRating >= 2 && averageRating < 3) {
                        sentiment = "Neutral";
                    } else if (averageRating >= 3 && averageRating < 4) {
                        sentiment = "Positive";
                    } else {
                        sentiment = "Very Positive";
                    }   

                    // Insert data into the Feedback table along with sentiment
                    String insertSql = "INSERT INTO feedback (email, message, rating, item, customer_name, customer_image, sentiment) " +
                            "VALUES (?, ?, ?, ?, ?, ?, ?)";
                    preparedStatement = connection.prepareStatement(insertSql);
                    preparedStatement.setString(1, email);
                    preparedStatement.setString(2, message);
                    preparedStatement.setString(3, rating);
                    preparedStatement.setString(4, item);
                    preparedStatement.setString(5, customerName);
                    preparedStatement.setBytes(6, customerImageDataBytes);
                    preparedStatement.setString(7, sentiment); // Insert sentiment
                    int rowsInserted = preparedStatement.executeUpdate();

                    if (rowsInserted > 0) {
                        // Show a Swal alert for successful submission
    %>
                        <script>
                            Swal.fire({
                                icon: 'success',
                                title: 'Feedback Submitted',
                                text: 'Thank you for your feedback!',
                                confirmButtonText: 'OK',
                                allowOutsideClick: false
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    window.location.href = 'customer_feedback.jsp';
                                }
                            });
                        </script>
    <%
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close database resources (connection, statement, result set)
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
