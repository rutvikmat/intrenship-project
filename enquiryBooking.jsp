<%@ page import="java.sql.*" %>
<%@ include file="dbConnection.jsp" %>
<%
    String userName = request.getParameter("user_name");
    String email = request.getParameter("email");
    String userContact = request.getParameter("user_contact");
    String carName = request.getParameter("car_name");
    String location = request.getParameter("location");
    String pickupDate = request.getParameter("pickup_date");
    String returnDate = request.getParameter("return_date");

    try {
        String query = "INSERT INTO EnquiryBookings (user_name, email, user_contact, car_name, location, pickup_date, return_date) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = conn.prepareStatement(query);

        pstmt.setString(1, userName);
        pstmt.setString(2, email);
        pstmt.setString(3, userContact);
        pstmt.setString(4, carName);
        pstmt.setString(5, location);
        pstmt.setString(6, pickupDate);
        pstmt.setString(7, returnDate);

        int rows = pstmt.executeUpdate();

       if (rows > 0) {
    // Enquiry booking successful
    out.println("<script type='text/javascript'>");
    out.println("alert('Enquiry booked successfully!');");
    out.println("window.location.href = 'index.jsp';"); // Replace 'home.jsp' with the actual homepage URL
    out.println("</script>");
} else {
    // Enquiry booking failed
    out.println("<script type='text/javascript'>");
    out.println("alert('Failed to book enquiry. Try again later.');");
    out.println("window.location.href = 'booking.jsp';"); // Replace 'home.jsp' with the actual homepage URL
    out.println("</script>");
}


        pstmt.close();
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    } finally {
        if (conn != null) {
            conn.close();
        }
    }
%>
