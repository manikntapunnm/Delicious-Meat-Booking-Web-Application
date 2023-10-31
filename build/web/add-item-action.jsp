<%-- 
    Document   : add-item-action
    Created on : 04-Sept-2023, 5:54:28 pm
    Author     : manikanta
--%>

<%@ page import="java.io.*,java.sql.*,java.util.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Item</title>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
      <%
    // Check if the request is multipart/form-data
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart) {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Parse the multipart request
            List<FileItem> items = upload.parseRequest(request);

            String itemName = null;
            String description = null;
            String quantity = null;
            double price = 0.0;
            double discount =0.0;
            String category= null;
            InputStream itemImageStream = null;

            for (FileItem item : items) {
                if (item.isFormField()) {
                    // Process form fields
                    if ("itemName".equals(item.getFieldName())) {
                        itemName = item.getString();
                    } else if ("description".equals(item.getFieldName())) {
                        description = item.getString();
                    } else if ("price".equals(item.getFieldName())) {
                        price = Double.parseDouble(item.getString());
                    }
                     else if ("discount".equals(item.getFieldName())) {
                        discount = Double.parseDouble(item.getString());
                    }
                      else if ("quantity".equals(item.getFieldName())) {
                        quantity = item.getString();
                    }
                      else if ("category".equals(item.getFieldName())) {
                        category = item.getString();
                    }
                } else {
                    // Process the file field (item image)
                    itemImageStream = item.getInputStream();
                }
            }

            // Obtain a database connection
            connection = Dbconn.dbconn.getConnection();

            // SQL statement to insert data
            String sql = "INSERT INTO items1 (item_name,category, description, price,discount,quantity, item_image) VALUES (?,?,?, ?, ?, ?, ?)";

            // Create a prepared statement
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, itemName);
            preparedStatement.setString(2, category);
            
            preparedStatement.setString(3, description);
            preparedStatement.setDouble(4, price);
            preparedStatement.setDouble(5, discount);
            preparedStatement.setString(6, quantity);
            

            if (itemImageStream != null) {
                // Set the item_image column with the input stream
                preparedStatement.setBlob(7, itemImageStream);
            }

            // Execute the SQL statement to insert data
            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
            
            
               String successMessage = "Added successfully.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'success',");
                    out.println("  title: 'Success',");
                    out.println("  text: '" + successMessage + "',");
                    out.println("}).then(function() { window.location.href = 'items_all.jsp'; });");
                    out.println("</script>");
            
                //out.println("Item added successfully.");
            } else {
            
            
            String errorMessage = "No Item Added.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'add-item.jsp'; });");
                    out.println("</script>");
            
            
            
            
                //out.println("Failed to add the item.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        } finally {
            // Close database resources
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
    } else {
        out.println("Invalid request.");
    }
    %>

 
</body>
</html>
