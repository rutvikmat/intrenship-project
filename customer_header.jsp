<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Car Rental Service - Rent a car for your next trip.">
    <title>Car Rental Service</title>
    <link rel="icon" type="image/x-icon" href="images/logo.jpg">
<style>
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Roboto', sans-serif;
}

body {
    background-color: #f9f9f9;
    color: #333;
    line-height: 1.6;
}

/* Header Styling */
header {
    background-color: #000000; /* Bright Blue */
    padding: 20px 0;
    color: white;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

header .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 20px;
}

header .logo h1 {
    font-size: 2.5rem;
    font-weight: bold;
    letter-spacing: 1px;
}

header nav ul {
    list-style-type: none;
    display: flex;
}

header nav ul li {
    margin: 0 20px;
}

header nav ul li a {
    color: white;
    text-decoration: none;
    font-size: 1.1rem;
    font-weight: 500;
    transition: color 0.3s ease;
}

header nav ul li a:hover {
    color: #f1c40f; /* Golden Yellow */
}
 .btn {
            background: #ff9800;
            color: #fff;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background: #e68900;
        }

</style>
</head>
<body>    
    <header>
        <div class="container">
            <div class="logo">
                <h1>Car Rental Service</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="customer_home.jsp">Home</a></li>
                    <li><a href="customer_view_cars.jsp">Our Cars</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact</a></li>
                    <li><a href="customer_booking.jsp">Book Now</a></li>
                    <li><a href="customer_view_booking.jsp">View Booking</a></li>
                    
                    <li><font color="red"> User : <%= session.getAttribute("username") %></font></li>
                    <li><button class="btn"><a href="logout.jsp">Logout</a></button></li>

                </ul>
            </nav>
        </div>
    </header>
 </body>
 </html>