<%@include file="dbcon.jsp"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*"%>

<%
    String s1 = request.getParameter("car_name");
    String s2 = request.getParameter("car_model");
    String s4 = request.getParameter("car_id");
    String s5 = request.getParameter("license_plate");
    String s6 = request.getParameter("status");
    String s7 = request.getParameter("rental_rate");
    String s8 = request.getParameter("car_type");
int k = stmt.executeUpdate(
            "INSERT INTO cars (car_name, car_model, car_image, car_id, license_plate, status, rental_rate, car_type) " +
            "VALUES ('"+s1+"', '"+s2+"', 'img', '"+s4+"', '"+s5+"', '"+s6+"', '"+s7+"', '"+s8+"')"
        );
        session.setAttribute("car_name",s1);
    
    
%>

<jsp:forward page="uploadcar.jsp" />