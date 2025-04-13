<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

    <title>Available Cars</title>
    <style>
        body {
            background-color:white;
            font-family: Arial, sans-serif;
            margin: 0px;
            padding: 0;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            justify-content: center;
        }
        .car-box {
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 15px;
            width: 400px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease-in-out;
        }
        .car-box:hover {
            transform: scale(1.05);
        }
        .car-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 5px;
        }
        .car-name {
            font-size: 1.5em;
            margin: 10px 0;
            color: #333;
        }
        .car-details {
            font-size: 0.9em;
            color: #555;
            margin-bottom: 10px;
        }
        .rent-button {
            background-color:rgb(231, 165, 32);
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1em;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .rent-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <jsp:include page="owner_header.jsp" />
    <h1 style="text-align: center;">Customer Details</h1>
    <div class="container">
        <%
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                // Database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");

                // Query to fetch car details
                String sql = "SELECT * FROM users";
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);

                // Loop through the result set
                while (rs.next()) {
                    String username = rs.getString("username");
                    String email = rs.getString("email");
                    String usertype = rs.getString("utype");
        %>
        <div class="car-box">
            <div class="car-name"><%= username %> </div>
            <div class="car-details">
                <p>email: <%= email %></p>
                <p>user type: <%= usertype %> </p>
            </div>
        </div>
        <%
                }
            } catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            } finally {
                try {
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    out.println("<p>Error closing resources: " + e.getMessage() + "</p>");
                }
            }
        %>
    </div>
    
</body>
</html>
