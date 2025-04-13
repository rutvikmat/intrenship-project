<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Car Rental Service - Rent a car for your next trip.">
    <title>Car Rental Service</title>
    <link rel="icon" type="image/x-icon" href="images/logo.jpg">
 <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 15px 20px;
            text-align: center;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            padding: 20px;
        }
        .card {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin: 15px;
            padding: 20px;
            flex: 1 1 30%;
            text-align: center;
        }
        .card h3 {
            margin: 10px 0;
            color: #333;
        }
        .card p {
            font-size: 18px;
            color: #555;
        }
        .button {
            margin-top: 15px;
            display: inline-block;
            padding: 10px 20px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            font-size: 16px;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>    
    <!-- Header Section -->
        <jsp:include page="owner_header.jsp"/> 

        
    <div class="container">
        <!-- Dashboard Cards -->
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/carrental";
    String dbUser = "root";
    String dbPassword = "";

    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;

    int totalCars = 0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        String sql = "SELECT COUNT(*) AS total FROM cars";
        statement = connection.prepareStatement(sql);
        resultSet = statement.executeQuery();

        if (resultSet.next()) {
            totalCars = resultSet.getInt("total");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (resultSet != null) resultSet.close();
        if (statement != null) statement.close();
        if (connection != null) connection.close();
    }
%>
    <div class="card">
        <h3>Total Cars Available</h3>
        <p><%= totalCars %></p>
    </div>


<%
    
    int activeRentals = 0;

    try {
        // Establish database connection
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        // Query to count cars with status "rented"
        String sql = "SELECT COUNT(*) AS total FROM cars WHERE status = 'rented'"; // Update 'cars' and 'status' to match your table structure
        statement = connection.prepareStatement(sql);
        resultSet = statement.executeQuery();

        if (resultSet.next()) {
            activeRentals = resultSet.getInt("total"); // Get the count of rented cars
        }
    } catch (Exception e) {
        out.println("<p style='color: red;'>Error: " + e.getMessage() + "</p>");
    } finally {
        // Close database resources
        if (resultSet != null) try { resultSet.close(); } catch (Exception ignored) {}
        if (statement != null) try { statement.close(); } catch (Exception ignored) {}
        if (connection != null) try { connection.close(); } catch (Exception ignored) {}
    }
%>

<!-- Dashboard Card for Active Rentals -->
    <div class="card">
        <h3>Active Rentals</h3>
        <p><%= activeRentals %></p>
    </div>

      <div class="card">
        <h3>Total Revenue</h3>
        <p>
            <%
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;
                double totalRevenue = 0.0;

                try {
                    // Database connection
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");

                    // Query to calculate the total revenue
                    String query = "SELECT SUM(payment_amount) AS total_revenue FROM payment";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(query);

                    // Fetch the total revenue
                    if (rs.next()) {
                        totalRevenue = rs.getDouble("total_revenue");
                    }
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        out.println("Error closing resources: " + e.getMessage());
                    }
                }
                out.print(" &#8377 " + totalRevenue);
            %>
        </p>
    </div>
        
        <!-- Quick Actions -->
        <div class="card">
            <h3>Add New Car</h3>
            <a href="addcar.jsp" class="button">Add Car</a>
        </div>
        <div class="card">
            <h3>View Bookings</h3>
            <a href="viewEnquiries.jsp" class="button">View Bookings</a>
        </div>
        <div class="card">
            <h3>View Payments</h3>
            <a href="viewPayments.jsp" class="button">Add Car</a>
        </div>
        <div class="card">
            <h3>View Customer details</h3>
            <a href="owner_view_customer.jsp" class="button">View Customer</a>
        </div>
        <div class="card">
            <h3>Add Employe</h3>
            <a href="insert_user.jsp" class="button">Add Employe</a>
        </div>
        
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>