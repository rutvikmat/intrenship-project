<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental - Our Fleet</title>
    <link rel="icon" type="image/x-icon" href="images/logo.jpg">
    <style>
        /* Reset and general styling */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Roboto', sans-serif;
}

body {
    background-color: transparent;
    color: #333;
    line-height: 1.6;
}


/* Cars Section Styling */
.cars-section {
    padding: 50px 20px;
    background-color: black;
    text-align: center;
}

.cars-section h2 {    
    font-size: 2.5rem;
    margin-bottom: 40px;
    color: #2c3e50;
}

.car-list {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
}

.car {
    background-color: #ecf0f1;
    border-radius: 10px;
    box-shadow: 10 4px 10px rgba(0, 0, 0, 0.1);
    overflow: visible;
    margin: 20px;
    width: 30%;
    text-align: center;
    padding: 20px;
    transition: transform 0.3s ease;
    position: relative;
}

.car::before {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: white;
    opacity: 100;
    z-index: 1;
}
.car img {
    width: 100%;
    height: auto;
    border-radius: 8px;
    margin-bottom: 20px;
    z-index: 2;
}

.car h3 {
    font-size: 1.6rem;
    font-weight: 600;
    margin-bottom: 15px;
    color: #2c3e50;
}

.car p {
    font-size: 1.1rem;
    margin-bottom: 15px;
    color: #7f8c8d;
}

.car .btn {
    background-color: #27ae60; /* Green */
    color: rgb(0, 0, 0);
    padding: 10px 25px;
    font-size: 1.1rem;
    font-weight: bold;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
   
}

.car .btn:hover {
    background-color: #2ecc71; /* Lighter Green */
}


/* Footer Section Styling */
footer {
    background-color: #000000;
    padding: 20px 0;
    color: white;
    text-align: center;
}

footer p {
    margin-bottom: 10px;
}

footer .social-media {
    margin-top: 10px;
}

footer .social-media a {
    color: white;
    text-decoration: none;
    margin: 0 15px;
    font-size: 1.1rem;
    transition: color 0.3s ease;
}

footer .social-media a:hover {
    color: #f39c12; /* Golden Yellow */
}

/* Responsive Design */
@media (max-width: 768px) {
    .car-list {
        flex-direction: column;
        align-items: center;
    }

    .car {
        width: 80%;
        margin: 10px 0;
    }

    .hero h2 {
        font-size: 2.5rem;
    }

    .hero p {
        font-size: 1rem;
    }

    .booking-section form {
        grid-template-columns: 1fr;
    }
}

    </style>
</head>
<body>
    <!-- Header Section -->
    <jsp:include page="header.jsp"/>
    <!-- Car List Section -->
    <div class="container">
        <h1><center>Car Categories</center></h1>

        <!-- SUV Category -->
        <div class="category">
            <h2><center>SUV</center></h2>
            <div class="car-list">
                <div class="car">
                    <img src="images/toyota highlander.png" alt="SUV 1">
                    <p>Toyota Highlander</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Toyota Highlander">
                        <input type="hidden" name="carType" value="SUV">
                        <div class="btn">
                        <button type="submit">Book Now</button>
                        </div>
                    </form>
                </div>
                <div class="car">
                    <img src="images/creta1.jpg" alt="SUV 2">
                    <p>Hyundai Creta</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Hyundai Creta">
                        <input type="hidden" name="carType" value="SUV">
                        <div class="btn">
                        <button type="submit">Book Now</button>
                        </div>
                    </form>
                </div>
                <div class="car">
                    <img src="images/ertiga1.jpeg" alt="SUV 3">
                    <p>Suzuki Ertiga</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Suzuki Ertiga">
                        <input type="hidden" name="carType" value="SUV">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Sedan Category -->
        <div class="category">
            <h2><center>Sedan</center></h2>
            <div class="car-list">
                <div class="car">
                    <img src="images/vernavernafaceliftrightfrontthreequarter.jpeg" alt="Sedan 1">
                    <p>Hyundai Verna</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Hyundai Verna">
                        <input type="hidden" name="carType" value="Sedan">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
                <div class="car">
                    <img src="images/virtusvolkswagenvirtusrightfrontthreequarter0.jpeg" alt="Sedan 2">
                    <p>Virtus Volkswagen</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Virtus Volkswagen">
                        <input type="hidden" name="carType" value="Sedan">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
                <div class="car">
                    <img src="images/bmw-22428.png" alt="Sedan 3">
                    <p>BMW 3 Series</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="BMW 3 Series">
                        <input type="hidden" name="carType" value="Sedan">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Minivan Category -->
        <div class="category">
            <h2><center>Minivan Category</center></h2>
            <div class="car-list">
                <div class="car">
                    <img src="images/eecoeecorightsideview.png" alt="Minivan 1">
                    <p>Suzuki Eco</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Suzuki Eco">
                        <input type="hidden" name="carType" value="Minivan">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
                <div class="car">
                    <img src="images/eecoeecobootspace.png" alt="Minivan 2">
                    <p>Suzuki Omni</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Suzuki Omni">
                        <input type="hidden" name="carType" value="Minivan">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Luxury Category -->
        <div class="category">
            <h2><center>Luxury</center></h2>
            <div class="car-list">
                <div class="car">
                    <img src="images/aclasslimousinemercedesbenzaclasslimousinerightfrontthreequarter13.jpeg" alt="Luxury 1">
                    <p>Mercedes-Benz A-Class Limousine</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Mercedes-Benz A-Class Limousine">
                        <input type="hidden" name="carType" value="Luxury">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
                <div class="car">
                    <img src="images/rangerovervelarrangerovervelarrightfrontthreequarter.jpeg" alt="Luxury 2">
                    <p>Range Rover</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Range Rover">
                        <input type="hidden" name="carType" value="Luxury">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
                <div class="car">
                    <img src="images/gclasswitheqpowergclasswitheqpowerleftfrontthreequarter.jpeg" alt="Luxury 3">
                    <p>Mercedes-Benz G-Wagon</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Mercedes-Benz G-Wagon">
                        <input type="hidden" name="carType" value="Luxury">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Sports Category -->
        <div class="category">
            <h2><center>Sports</center></h2>
            <div class="car-list">
                <div class="car">
                    <img src="images/porsche.jpg" alt="Sports 1">
                    <p>Porsche 911</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Porsche 911">
                        <input type="hidden" name="carType" value="Sports">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
                <div class="car">
                    <img src="images/sportscarbg.jpg" alt="Sports 2">
                    <p>Ferrari 488</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Ferrari 488">
                        <input type="hidden" name="carType" value="Sports">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
                <div class="car">
                    <img src="images/supra.jpg" alt="Sports 3">
                    <p>Toyota Supra</p>
                    <form action="confirm_booking.html" method="GET">
                        <input type="hidden" name="carName" value="Toyota Supra">
                        <input type="hidden" name="carType" value="Sports">
                        <div class="btn">
                            <button type="submit">Book Now</button>
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

<jsp:include page ="footer.jsp"/>

</body>
</html>
