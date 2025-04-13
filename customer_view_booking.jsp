<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Booking Details</title>
    <style>
     body {
            font-family: Arial, sans-serif;
            
            background-color: #f4f4f9;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #444;
            margin-bottom: 20px;
        }

     table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            border: 1px solid #ddd;
            text-align: left;
            padding: 12px;
        }

        table th {
            background-color:rgb(0, 0, 0);
            color: white;
            text-transform: uppercase;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }

        table td {
            font-size: 14px;
        }
    </style>
</head>
<body>
<jsp:include page="customer_header.jsp" />
<center>
<h3>Booking Details</h3>

<%
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    // Fetch username from the session
    String userName = (String) session.getAttribute("username");

    if (userName != null && !userName.trim().isEmpty()) {
        try {
            // Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");

            // Query booking details by username
            String query = "SELECT b.booking_id, b.car_id, b.pickup_date, b.return_date, b.total_amount, p.payment_status " +
                           "FROM bookings b LEFT JOIN payment p ON b.booking_id = p.booking_id " +
                           "WHERE b.user_name = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, userName);
            rs = stmt.executeQuery();

            // Display booking details
            if (rs.next()) {
                out.println("<h3>Booking Details for User: " + userName + "</h3>");
                out.println("<table border='1'>");
                out.println("<tr><th>Booking ID</th><th>Car ID</th><th>Pickup Date</th><th>Return Date</th><th>Total Amount</th><th>Payment Status</th></tr>");
                do {
                    int bookingId = rs.getInt("booking_id");
                    int carId = rs.getInt("car_id");
                    String pickupDate = rs.getString("pickup_date");
                    String returnDate = rs.getString("return_date");
                    double totalAmount = rs.getDouble("total_amount");
                    String paymentStatus = rs.getString("payment_status");

                    out.println("<tr>");
                    out.println("<td>" + bookingId + "</td>");
                    out.println("<td>" + carId + "</td>");
                    out.println("<td>" + pickupDate + "</td>");
                    out.println("<td>" + returnDate + "</td>");
                    out.println("<td>$" + totalAmount + "</td>");
                    out.println("<td>" + (paymentStatus != null ? paymentStatus : "Pending") + "</td>");
                    out.println("</tr>");
                } while (rs.next());
                out.println("</table>");
            } else {
                out.println("<p>No bookings found for username: " + userName + "</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error: " + e.getMessage() + "</p>");
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    } else {
        out.println("<p>You must log in to view your bookings.</p>");
    }
%>
</center>
</body>
</html>
