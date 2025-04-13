<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Car Rental Service - Rent a car for your next trip.">
    <title>Car Rental Service</title>
    <link rel="icon" type="image/x-icon" href="images/logo.jpg">
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
<jsp:include page="owner_header.jsp"/> 
<%@ page import="java.sql.*" %>
<%@ include file="dbConnection.jsp" %>
<%
    try {
        String query = "SELECT * FROM EnquiryBookings";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(query);

        out.println("<h2>Enquiry Bookings</h2>");
        out.println("<table>");
        out.println("<tr>");
        out.println("<th>ID</th>");
        out.println("<th>Name</th>");
        out.println("<th>Email</th>");
        out.println("<th>Contact</th>");
        out.println("<th>Car</th>");
        out.println("<th>Location</th>");
        out.println("<th>Pickup Date</th>");
        out.println("<th>Return Date</th>");
        out.println("<th>Created At</th>");
        out.println("</tr>");

        while (rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getInt("id") + "</td>");
            out.println("<td>" + rs.getString("user_name") + "</td>");
            out.println("<td>" + rs.getString("email") + "</td>");
            out.println("<td>" + rs.getString("user_contact") + "</td>");
            out.println("<td>" + rs.getString("car_name") + "</td>");
            out.println("<td>" + rs.getString("location") + "</td>");
            out.println("<td>" + rs.getDate("pickup_date") + "</td>");
            out.println("<td>" + rs.getDate("return_date") + "</td>");
            out.println("<td>" + rs.getTimestamp("created_at") + "</td>");
            out.println("</tr>");
        }

        out.println("</table>");
        stmt.close();
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    } finally {
        if (conn != null) {
            conn.close();
        }
    }
%>
</body>
</html>
