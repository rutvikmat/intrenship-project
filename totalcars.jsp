<%@ page import="java.sql.*" %>
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/car_rental_db";
    String dbUser = "root";
    String dbPassword = "password";

    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;

    int totalCars = 0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        String sql = "SELECT COUNT(*) AS total FROM cars";
        statement = connection.prepareStatement(sql);
        resultSet = statement.executeQuery();

        if (resultSet.next()) {
            totalCars = resultSet.getInt("total");
        }

        // Store the count in the session
        session.setAttribute("totalCars", totalCars);
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (resultSet != null) resultSet.close();
        if (statement != null) statement.close();
        if (connection != null) connection.close();
    }

    // Redirect to the dashboard page
    response.sendRedirect("owner_home.jsp");
%>
