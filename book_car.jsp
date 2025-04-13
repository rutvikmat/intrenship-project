<%@ page import="java.sql.*" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.temporal.ChronoUnit" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Car</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        label {
            font-size: 1em;
            font-weight: bold;
            color: #555;
        }
        input, button {
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #007BFF;
            color: white;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Book Your Car</h1>
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            int carId = Integer.parseInt(request.getParameter("car_id"));
            String carName = "";
            String carModel = "";
            double rentalRate = 0.0;

            try {
                // Database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");

                // Fetch car details
                String query = "SELECT * FROM cars WHERE car_id = ?";
                ps = conn.prepareStatement(query);
                ps.setInt(1, carId);
                rs = ps.executeQuery();

                if (rs.next()) {
                    carName = rs.getString("car_name");
                    carModel = rs.getString("car_model");
                    rentalRate = rs.getDouble("rental_rate");
                }
            } catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            } finally {
                try {
                    if (rs != null) rs.close();
                    if (ps != null) ps.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    out.println("<p>Error closing resources: " + e.getMessage() + "</p>");
                }
            }
        %>
        <form action="confirm_booking.jsp" method="post">
            <label>Car Name:</label>
            <input type="text" name="car_name" value="<%= carName %> (<%= carModel %>)" readonly>

            <label>Rental Rate (Per Day):</label>
            <input type="text" name="rental_rate" value="  &#8377 <%= rentalRate %>" readonly>

            <label>Your Name:</label>
            <input type="text" name="user_name" required>

            <label>Contact:</label>
            <input type="text" name="user_contact" required>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Pickup Date:</label>
            <input type="date" name="pickup_date" required>

            <label>Return Date:</label>
            <input type="date" name="return_date" required>

            <input type="hidden" name="car_id" value="<%= carId %>">
            <input type="hidden" name="rental_rate_value" value="<%= rentalRate %>">

            <button type="submit">Confirm Booking</button>
        </form>
    </div>
</body>
</html>
