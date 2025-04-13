<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Confirm Booking</title>
</head>
<body>
<center>
    <h1>Confirm Booking</h1>
<%
    // Database connection
    Connection conn = null;
    PreparedStatement updateCarStatusStmt = null;
    PreparedStatement insertBookingStmt = null;
    ResultSet generatedKeys = null;

    try {
        // Parameters from the previous page
        int carId = Integer.parseInt(request.getParameter("car_id"));
        String userName = request.getParameter("user_name");
        String userContact = request.getParameter("user_contact");
        String email = request.getParameter("email");
        String pickupDate = request.getParameter("pickup_date");
        String returnDate = request.getParameter("return_date");

        // Calculate rental days and total amount
        java.sql.Date pickup = java.sql.Date.valueOf(pickupDate);
        java.sql.Date returnD = java.sql.Date.valueOf(returnDate);
        long days = (returnD.getTime() - pickup.getTime()) / (1000 * 60 * 60 * 24);

        // Connect to the database
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");

        // Get rental rate from cars table
        String rateQuery = "SELECT rental_rate FROM cars WHERE car_id = ?";
        PreparedStatement rateStmt = conn.prepareStatement(rateQuery);
        rateStmt.setInt(1, carId);
        ResultSet rs = rateStmt.executeQuery();
        double rentalRate = 0;
        if (rs.next()) {
            rentalRate = rs.getDouble("rental_rate");
        }

        double totalAmount = days * rentalRate;

        // Insert into bookings table and retrieve the generated booking_id
        String insertBookingQuery = "INSERT INTO bookings (car_id, user_name, user_contact, email, pickup_date, return_date, total_amount, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        insertBookingStmt = conn.prepareStatement(insertBookingQuery, Statement.RETURN_GENERATED_KEYS);
        insertBookingStmt.setInt(1, carId);
        insertBookingStmt.setString(2, userName);
        insertBookingStmt.setString(3, userContact);
        insertBookingStmt.setString(4, email);
        insertBookingStmt.setDate(5, pickup);
        insertBookingStmt.setDate(6, returnD);
        insertBookingStmt.setDouble(7, totalAmount);
        insertBookingStmt.setString(8, "pending");
        insertBookingStmt.executeUpdate();

        // Retrieve generated booking_id
        generatedKeys = insertBookingStmt.getGeneratedKeys();
        int bookingId = 0;
        if (generatedKeys.next()) {
            bookingId = generatedKeys.getInt(1); // Assuming the booking_id is the first column
        }

        // Update car status in cars table
        String updateCarStatusQuery = "UPDATE cars SET status = 'booked' WHERE car_id = ?";
        updateCarStatusStmt = conn.prepareStatement(updateCarStatusQuery);
        updateCarStatusStmt.setInt(1, carId);
        updateCarStatusStmt.executeUpdate();

        // Display booking details
        out.println("<h3>Confirm Booking Details</h3>");
        out.println("<p>Booking ID: " + bookingId + "</p>");
        out.println("<p>Car ID: " + carId + "</p>");
        out.println("<p>Name: " + userName + "</p>");
        out.println("<p>Contact: " + userContact + "</p>");
        out.println("<p>Email: " + email + "</p>");
        out.println("<p>Pickup Date: " + pickupDate + "</p>");
        out.println("<p>Return Date: " + returnDate + "</p>");
        out.println("<p>Total Amount: &#8377 " + totalAmount + "</p>");
        out.println("<p><a href='payment.jsp?total_amount=" + totalAmount + "&car_id=" + carId + "&user_name=" + userName + "&pickup_date=" + pickupDate + "&return_date=" + returnDate + "&booking_id=" + bookingId + "'>Proceed to Payment</a></p>");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    } finally {
        try {
            if (generatedKeys != null) generatedKeys.close();
            if (updateCarStatusStmt != null) updateCarStatusStmt.close();
            if (insertBookingStmt != null) insertBookingStmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</center>

</body>
</html>
