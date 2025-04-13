<%@ page import="java.sql.*, java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Confirmation</title>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement insertPaymentStmt = null;
    PreparedStatement updateBookingStatusStmt = null;

    try {
        // Retrieve parameters
        int bookingId = Integer.parseInt(request.getParameter("booking_id"));
        double paymentAmount = Double.parseDouble(request.getParameter("payment_amount"));
        LocalDate paymentDate = LocalDate.now();
        String paymentStatus = "Paid";

        // Connect to the database
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");

        // Insert payment details into the payment table
        String insertPaymentQuery = "INSERT INTO payment (booking_id, payment_amount, payment_date, payment_status) VALUES (?, ?, ?, ?)";
        insertPaymentStmt = conn.prepareStatement(insertPaymentQuery);
        insertPaymentStmt.setInt(1, bookingId);
        insertPaymentStmt.setDouble(2, paymentAmount);
        insertPaymentStmt.setDate(3, java.sql.Date.valueOf(paymentDate));
        insertPaymentStmt.setString(4, paymentStatus);
        insertPaymentStmt.executeUpdate();

        // Update booking status to "Confirmed" or another appropriate status
        String updateBookingStatusQuery = "UPDATE bookings SET status = 'Confirmed' WHERE booking_id = ?";
        updateBookingStatusStmt = conn.prepareStatement(updateBookingStatusQuery);
        updateBookingStatusStmt.setInt(1, bookingId);
        updateBookingStatusStmt.executeUpdate();

        out.println("<h3>Payment Successful</h3>");
        out.println("<p>Thank you for your payment. We will confirm and contact you for this booking.</p>");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    } finally {
        try {
            if (insertPaymentStmt != null) insertPaymentStmt.close();
            if (updateBookingStatusStmt != null) updateBookingStatusStmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
