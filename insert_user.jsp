<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert User</title>
</head>
<body>
    <h1>Register User</h1>
    <form action="insert_user.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" required><br><br>
        <label for="email">Email:</label>
        <input type="email" name="email" required><br><br>
        <label for="password">Password:</label>
        <input type="password" name="password" required><br><br>
        <label for="utype">User Type:</label>
        <select name="utype" required>
            <option value="owner">owner</option>
            <option value="customer">Customer</option>
        </select><br><br>
        <button type="submit">Submit</button>
    </form>
    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String utype = request.getParameter("utype");

            Connection conn = null;
            PreparedStatement pstmt1 = null;
            PreparedStatement pstmt2 = null;

            try {
                // Database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");

                // Query to insert into `user` table
                String sql1 = "INSERT INTO users (username, email, password, utype) VALUES (?, ?, ?, ?)";
                pstmt1 = conn.prepareStatement(sql1);
                pstmt1.setString(1, username);
                pstmt1.setString(2, email);
                pstmt1.setString(3, password);
                pstmt1.setString(4, utype);

                // Query to insert into `user1` table
                String sql2 = "INSERT INTO user1 (username, password, utype) VALUES (?, ?, ?)";
                pstmt2 = conn.prepareStatement(sql2);
                pstmt2.setString(1, username);
                pstmt2.setString(2, password);
                pstmt2.setString(3, utype);

                // Execute both insert operations
                int rows1 = pstmt1.executeUpdate();
                int rows2 = pstmt2.executeUpdate();

                if (rows1 > 0 && rows2 > 0) {
                    out.println("<h2>User registered successfully! </h2>");
                    out.println("back to home <a href='owner_home.jsp'>Dashboard</a>");
                } else {
                    out.println("<h2>Failed to register user.</h2>");
                }
            } catch (Exception e) {
                out.println("<h2>Error: " + e.getMessage() + "</h2>");
            } finally {
                try {
                    if (pstmt1 != null) pstmt1.close();
                    if (pstmt2 != null) pstmt2.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    out.println("<h2>Error closing resources: " + e.getMessage() + "</h2>");
                }
            }
        }
    %>
</body>
</html>
