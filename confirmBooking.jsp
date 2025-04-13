<%@ page import="java.sql.*, java.util.*, javax.mail.*, javax.mail.internet.*" %>

<%@ include file="../dbConnection.jsp" %>
<%
    String id = request.getParameter("id");
    String email = request.getParameter("email");

    // Step 1: Update the enquiry status in the database (if required)
    try {
        String updateQuery = "UPDATE EnquiryBookings SET status = 'Confirmed' WHERE id = ?";
        PreparedStatement pstmt = conn.prepareStatement(updateQuery);
        pstmt.setInt(1, Integer.parseInt(id));
        int rows = pstmt.executeUpdate();

        if (rows > 0) {
            out.println("<h3>Booking confirmed successfully!</h3>");
        } else {
            out.println("<h3>Failed to confirm booking.</h3>");
        }
        pstmt.close();
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error updating booking: " + e.getMessage() + "</h3>");
    }

    // Step 2: Send a confirmation email
    finally {
        if (conn != null) {
            conn.close();
        }
    }
%>
