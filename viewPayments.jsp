<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Payments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .container {
            text-align: center;
            margin: 20px;
        }
    </style>
</head>
<body>
    <h1>Payment Records</h1>

    <div class="container">
        <table>
            <thead>
                <tr>
                    <th>Payment ID</th>
                    <th>Booking ID</th>
                    <th>Payment Amount</th>
                    <th>Payment Date</th>
                    <th>Payment Status</th>
                </tr>
            </thead>
            <tbody>
            <%
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    // Connect to the database
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");

                    // Query the payment table
                    String query = "SELECT payment_id, booking_id, payment_amount, payment_date, payment_status FROM payment";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(query);

                    // Display the payment records
                    while (rs.next()) {
                        int paymentId = rs.getInt("payment_id");
                        int bookingId = rs.getInt("booking_id");
                        double paymentAmount = rs.getDouble("payment_amount");
                        Date paymentDate = rs.getDate("payment_date");
                        String paymentStatus = rs.getString("payment_status");

                        %>
                        <tr>
                            <td><%= paymentId %></td>
                            <td><%= bookingId %></td>
                            <td>$<%= paymentAmount %></td>
                            <td><%= paymentDate %></td>
                            <td><%= paymentStatus %></td>
                        </tr>
                        <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("<tr><td colspan='5'>Error: " + e.getMessage() + "</td></tr>");
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>
            </tbody>
        </table>
    </div>
</body>
</html>
