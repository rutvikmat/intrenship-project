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
   
    <h1 style="text-align: center;">Available Cars</h1>
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
                String sql = "SELECT * FROM cars WHERE status = 'available'";
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);

                // Loop through the result set
                while (rs.next()) {
                    String carName = rs.getString("car_name");
                    String carModel = rs.getString("car_model");
                    String carImage = rs.getString("car_image");
                    int carId = rs.getInt("car_id");
                    String licensePlate = rs.getString("license_plate");
                    double rentalRate = rs.getDouble("rental_rate");
        %>
        <div class="car-box">
            <img class="car-image" src="uploads/<%= carImage %>" alt="<%= carName %>">
            <div class="car-name"><%= carName %> (<%= carModel %>)</div>
            <div class="car-details">
                <p>License Plate: <%= licensePlate %></p>
                <p>Rental Rate: &#8377; <%= rentalRate %> / day</p>
            </div>
            <a href="book_car.jsp?car_id=<%= carId %>" class="rent-button">Rent This Car</a>
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
