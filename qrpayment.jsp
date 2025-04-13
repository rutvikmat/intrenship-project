<%@ page import="java.sql.*, java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Page</title>
</head>
<body>
<center>
<%
    String totalAmount = request.getParameter("total_amount");
    String carId = request.getParameter("car_id");
    String userName = request.getParameter("user_name");
    String pickupDate = request.getParameter("pickup_date");
    String returnDate = request.getParameter("return_date");
    String bookingId = request.getParameter("booking_id");

    out.println("<h3>Payment Details</h3>");
    out.println("<p>Booking ID: " + bookingId + "</p>");
    out.println("<p>Total Amount: $" + totalAmount + "</p>");
    out.println("<p>Car ID: " + carId + "</p>");
    out.println("<p>User Name: " + userName + "</p>");
    out.println("<p>Pickup Date: " + pickupDate + "</p>");
    out.println("<p>Return Date: " + returnDate + "</p>");
%>

    <h3>Scan the QR Code to Pay:</h3>
    <img src="images/qr.jpeg" alt="QR Code" style="width:200px;height:200px;">
    <p>After making the payment, click the "Confirm Booking" button below to confirm.</p>

    <form action="confirmPayment.jsp" method="POST">
        <input type="hidden" name="booking_id" value="<%= bookingId %>">
        <input type="hidden" name="payment_amount" value="<%= totalAmount %>">
        <input type="submit" value="Confirm Booking">
    </form>
    <p>We will let you know ur confirmation through mail or contact.</p>
    <h1> Thank you for booking with us.</h1>
</center>
</body>
</html>
