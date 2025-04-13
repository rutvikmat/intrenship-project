<%@ page import="java.io.*" %>
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
    out.println("<p>Total Amount: &#8377 " + totalAmount + "</p>");
    out.println("<p>Car ID: " + carId + "</p>");
    out.println("<p>User Name: " + userName + "</p>");
    out.println("<p>Pickup Date: " + pickupDate + "</p>");
    out.println("<p>Return Date: " + returnDate + "</p>");
    out.println("<form action='qrpayment.jsp' method='POST'>");
    out.println("<input type='hidden' name='total_amount' value='" + totalAmount + "'>");
    out.println("<input type='hidden' name='car_id' value='" + carId + "'>");
    out.println("<input type='hidden' name='user_name' value='" + userName + "'>");
    out.println("<input type='hidden' name='pickup_date' value='" + pickupDate + "'>");
    out.println("<input type='hidden' name='return_date' value='" + returnDate + "'>");
    out.println("<input type='hidden' name='booking_id' value='" + bookingId + "'>");
    out.println("<p><a href='qrpayment.jsp?total_amount=" + totalAmount + "&car_id=" + carId + "&user_name=" + userName + "&pickup_date=" + pickupDate + "&return_date=" + returnDate + "&booking_id=" + bookingId + "'>Proceed to Payment</a></p>");
    out.println("</form>");
    
%>


</center>
</body>
</html>
