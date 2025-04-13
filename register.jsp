<%@ page import="java.sql.*" %>
<%
    // Retrieve form data
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirm_password");
    String userType = "customer"; // Default user type

    if (username != null && email != null && password != null && confirmPassword != null) {
        if (password.equals(confirmPassword)) {
            Connection conn = null;
            PreparedStatement stmtUsers = null;
            PreparedStatement stmtUserLogin = null;

            try {
                // Database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");

                // Disable auto-commit for transaction management
                conn.setAutoCommit(false);

                // Insert user into the `users` table
                String sqlUsers = "INSERT INTO users (username, email, password, utype) VALUES (?, ?, ?, ?)";
                stmtUsers = conn.prepareStatement(sqlUsers);
                stmtUsers.setString(1, username);
                stmtUsers.setString(2, email);
                stmtUsers.setString(3, password); // Ideally, hash the password before storing
                stmtUsers.setString(4, userType);
                stmtUsers.executeUpdate();

                // Insert user into the `userlogin` table
                String sqlUserLogin = "INSERT INTO user1 (username, password, utype) VALUES (?, ?, ?)";
                stmtUserLogin = conn.prepareStatement(sqlUserLogin);
                stmtUserLogin.setString(1, username);
                stmtUserLogin.setString(2, password); // Use the same password here
                stmtUserLogin.setString(3, userType);
                stmtUserLogin.executeUpdate();

                // Commit the transaction
                conn.commit();

                out.println("<p>Registration successful. Please <a href='login.jsp'>login</a> to continue.</p>");
            } catch (Exception e) {
                if (conn != null) {
                    try {
                        conn.rollback(); // Rollback transaction on error
                    } catch (SQLException rollbackEx) {
                        rollbackEx.printStackTrace();
                    }
                }
                e.printStackTrace();
                out.println("<p>Error: " + e.getMessage() + "</p>");
            } finally {
                try {
                    if (stmtUsers != null) stmtUsers.close();
                    if (stmtUserLogin != null) stmtUserLogin.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            out.println("<p>Passwords do not match. Please try again.</p>");
        }
    }
%>
