<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Success</title>
</head>
<body>
    <h1>Payment Successful!</h1>
    <p>Thank you for your payment.</p>
    <p>Payment ID: <%= request.getParameter("payment_id") %></p>
    <p><a href="index.jsp">Go Back to Home</a></p>
</body>
</html>
