<%@ page import="java.sql.*" %>
<%
    String dbURL = "jdbc:mysql://localhost:3306/CarRental";
    String dbUser = "root"; // Replace with your DB username
    String dbPassword = ""; // Replace with your DB password
    Connection conn = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
        if (conn != null) {
            out.println("");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Database connection failed: " + e.getMessage());
    }
%>
