<%@ page import="java.sql.*, com.razorpay.RazorpayClient, com.razorpay.RazorpayException, org.json.JSONObject" %>
<%
    String paymentId = request.getParameter("payment_id");
    String bookingId = request.getParameter("booking_id");

    try {
        RazorpayClient razorpay = new RazorpayClient("rzp_test_rVmErQf6lbvkNV", "UJNqWwT1GqZjpKJ4E9qIEQh8");
        com.razorpay.Payment payment = razorpay.Payments.fetch(paymentId);

        // Check if payment is successful
        if ("captured".equals(payment.get("status"))) {
            // Update your database to confirm the booking
            // Example:
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "username", "password");
            PreparedStatement ps = con.prepareStatement("UPDATE bookings SET payment_status = 'Paid' WHERE booking_id = ?");
            ps.setString(1, bookingId);
            ps.executeUpdate();
            con.close();

            out.println("<h3>Payment Successful!</h3>");
            out.println("<p>Your booking has been confirmed.</p>");
        } else {
            out.println("<h3>Payment Failed!</h3>");
        }
    } catch (Exception e) {
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    }
%>