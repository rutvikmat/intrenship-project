<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Car Rental Service - Rent a car for your next trip.">
    <title>Car Rental Service</title>
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
    background-color: #f9f9f9;
    color: #333;
    line-height: 1.6;
}

/*intro section */
.home {
    background-color: whitesmoke;
    height: 600px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.home .main-sec {
    display: flex;
    column-gap: 50px;
    /* background-color: red; */
    justify-content: center;
    align-items: center;
}


.home .right {
    width: 600px;
    height: 400px;
    margin: 78px;
    padding: 30px;
    border-bottom-left-radius: 50%;
    border-top-right-radius: 50%;
    border-top-left-radius: 100px;
    border-bottom-right-radius: 100px;
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center;
    background-image: linear-gradient(155deg, black, darkred);
}


.home .left {
    padding: 30px;
    height: 500px;
    display: flex;
    justify-content: center;
    /* align-items: center; */
    row-gap: 20px;
    flex-direction: column;
    width: 552px;
    /* background-color: green; */
}



.home .main-sec .left .txt1 {
    font-size: 4rem;
    font-weight: 700;
}

.home .right img {
    width: 50vw;
    filter: drop-shadow(20px 50px 25px #b3e3e3);
}
/* loc-sectin styling */

.loc-sec {
    height: 130px;
    /* background-color: red; */
    display: flex;
    justify-content: center;
    /* align-items: center; */
}

.loc-sec .main-sec {
    background-color: white;
    display: flex;
    column-gap: 20px;
    border-radius: 10px;
    height: 160px;
    justify-content: center;
    align-items: center;
    box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
    margin-top: -70px;
}

.loc-sec .main-sec .pick {
    padding: 30px;
    display: flex;
    flex-direction: column;
    row-gap: 20px;
}

.loc-sec .main-sec .pick label {
    color: black;
    font-weight: 700;
}

.loc-sec .main-sec .pick p {
    border: 1px solid darkgrey;
    padding: 6px 20px;
    border-radius: 10px;
}

.loc-sec .main-sec .pick input {
    padding: 10px 30px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    background-color: #f39c12;
}
/* Styling the container */
.loc-sec .main-sec .pick {
  position: relative;
  width: 200px;
  margin: 20px auto;
}

/* Label styling */
.loc-sec .main-sec .pick label {
  font-size: 16px;
  font-weight: 600;
  color: #333;
  margin-bottom: 10px;
  display: block;
  transition: color 0.3s ease;
}

/* Select box styling */
.loc-sec .main-sec #location {
  width: 100%;
  padding: 10px 15px;
  font-size: 14px;
  color: #333;
  background-color: #f8f8f8;
  border: 2px solid #ddd;
  border-radius: 5px;
  appearance: none;
  outline: none;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

/* Hover effect for the select box */
#location:hover {
  border-color: #3b82f6;
  box-shadow: 0 4px 10px rgba(59, 130, 246, 0.2);
}

/* Focus effect for the select box */
#location:focus {
  border-color: #3b82f6;
  box-shadow: 0 4px 10px rgba(59, 130, 246, 0.3);
}

/* Dropdown animation */
#location option {
  opacity: 0;
  animation: fadeIn 0.3s forwards;
}

/* Delay animation for each option */
#location option:nth-child(1) {
  animation-delay: 0.1s;
}
#location option:nth-child(2) {
  animation-delay: 0.2s;
}
#location option:nth-child(3) {
  animation-delay: 0.3s;
}
#location option:nth-child(4) {
  animation-delay: 0.4s;
}
#location option:nth-child(5) {
  animation-delay: 0.5s;
}
#location option:nth-child(6) {
  animation-delay: 0.6s;
}
#location option:nth-child(7) {
  animation-delay: 0.7s;
}
#location option:nth-child(8) {
  animation-delay: 0.8s;
}
#location option:nth-child(9) {
  animation-delay: 0.9s;
}
#location option:nth-child(10) {
  animation-delay: 1.0s;
}

/* Animation keyframes */
@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}


/* Cars Section Styling */
.cars-section {
    padding: 50px 20px;
    background-color: white;
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
    color: white;
    padding: 10px 25px;
    font-size: 1.1rem;
    font-weight: bold;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
    z-index: 2;
}

.car .btn:hover {
    background-color: #2ecc71; /* Lighter Green */
}
/* support section */
.support-sec {
    height: 390px;
    padding: 30px;
    /* justify-content: center; */
    flex-direction: column;
    display: flex;
    background-color: whitesmoke;
}

.support-sec .txt {
    display: flex;
    flex-direction: column;
    align-items: center;
    row-gap: 10px;
}

.support-sec .txt .txt1 {
    font-size: 3rem;
    font-weight: 700;
}

.support-sec .txt .txt1 span {
    color: #0043ff8c;
}

.support-sec .main-sec {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 30px;
    column-gap: 10px;
    flex-wrap: wrap;
    row-gap: 10px;
}

.support-sec .main-sec .box {
    /* background: red; */
    padding: 20px;
    width: 575px;
    display: flex;
    column-gap: 36px;
    /* flex-direction: column; */
    row-gap: 20px;
}

.support-sec .main-sec .box i {
    font-size: 30px;
    background: #0043ff8c;
    width: fit-content;
    padding: 34px;
    border-radius: 15px;
}

.support-sec .main-sec .box .txt-sec {
    display: flex;
    flex-direction: column;
    row-gap: 10px;
}

.support-sec .main-sec .box .txt-sec .txt1 {
    font-size: 30px;
    font-weight: 700;
}
/* Acheive section */
.achie-sec {
    height: 390px;
    padding: 30px;
    justify-content: center;
    flex-direction: column;
    display: flex;
    background-color: white;
}

.achie-sec .txt {
    display: flex;
    flex-direction: column;
    align-items: center;
    row-gap: 10px;
}

.achie-sec .txt .txt1 {
    font-size: 3rem;
    font-weight: 700;
}

.achie-sec .txt .txt1 span {
    color: orange;
}

.achie-sec .main-sec .box {
    background-color: white;
    width: 300px;
    height: 180px;
    display: flex;
    flex-direction: column;
    box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
    justify-content: center;
    align-items: center;
    row-gap: 20px;
    border-radius: 10px;
}

.achie-sec .main-sec .box .txt1 {
    font-size: 3rem;
    font-weight: 700;
}

.achie-sec .main-sec {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 30px;
    column-gap: 10px;
    flex-wrap: wrap;
    row-gap: 10px;
}
/* start sec */
.start-sec {
    height: 390px;
    padding: 30px;
    justify-content: center;
    flex-direction: column;
    display: flex;
    background-color: white;
}

.start-sec .main-sec {
    display: flex;
    justify-content: center;
    align-items: center;
    background-image: linear-gradient(45deg, #17c5be, #1c243a);
    border-radius: 10px;
    padding: 30px;
    column-gap: 50px;
}

.start-sec .main-sec .left {
    /* background: greenyellow; */
    padding: 20px;
    height: 300px;
    width: 500px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    row-gap: 20px;
}

.start-sec .main-sec .left .txt1 {
    font-size: 3rem;
    font-weight: 700;
}

.start-sec .main-sec .left .btn input {
    padding: 10px 30px;
    border: none;
    background-color: white;
    cursor: pointer;
    border-radius: 10px;
}

.start-sec .main-sec .right {
    /* background: rgb(47, 144, 255); */
    padding: 20px;
    height: 300px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    row-gap: 20px;
    width: 300px;
    align-items: center;

    /* width: 400px;
    height: 300px;
    margin: 78px;
    padding: 30px; */
    border-bottom-left-radius: 50%;
    border-top-right-radius: 50%;
    border-top-left-radius: 100px;
    border-bottom-right-radius: 100px;
    /* display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center; */
   
}

.start-sec .main-sec .right img {
    width: 50vw;
    filter: drop-shadow(20px 50px 25px #b3e3e3);
}

/* Booking Section Styling */
.booking-section {
    background-color: #000000; /* Bright Blue */
    padding: 50px 20px;
    color: white;
    text-align: center;
}

.booking-section .container {
    max-width: 900px;
    margin: 0 auto;
}

.booking-section h2 {
    font-size: 2.5rem;
    margin-bottom: 30px;
}

.booking-section form {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
    justify-items: center;
}

.booking-section label {
    font-size: 1.1rem;
}

.booking-section input,
.booking-section select {
    padding: 12px;
    font-size: 1rem;
    border-radius: 5px;
    border: 1px solid #ccc;
    width: 80%;
}

.booking-section button {
    background-color: #f39c12; /* Golden Yellow */
    color: white;
    font-size: 1.2rem;
    font-weight: bold;
    padding: 12px 30px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
    grid-column: span 2;
}

.booking-section button:hover {
    background-color: #e67e22;
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
<body>
    <!-- Header Section -->
    <jsp:include page="header.jsp"/>
    <! -- intro section -- !>
    <section class="about-section">
    <div class="home">
        <div class="main-sec">
            <div class="left">
                <p class="txt1">Easy And Fast Way To <span style="color: orange;">Rent</span> Your Car</p>
                <p>At Car Rentals, we provide a seamless experience for renting cars, whether you're traveling for business or leisure. Our fleet of cars includes everything from compact city vehicles to luxurious sedans and SUVs. Our goal is to make your trip more convenient and enjoyable!</p>
            </div>

            <div class="right">
                <img src="images/mustang.png" alt="bg">
            </div>
        </div>
    </div>
    </section>
    <! loc-section !>
<section class="loc-sec">
    <div class="main-sec">
        <!-- Pick Up Location -->
        <div class="pick">
            <label for="location">Pick Up Location</label>
            <select id="location" name="location">
                <option value="andaman_nicobar">Andaman and Nicobar Islands</option>
                <option value="andhra_pradesh">Andhra Pradesh</option>
                <option value="arunachal_pradesh">Arunachal Pradesh</option>
                <option value="assam">Assam</option>
                <option value="bihar">Bihar</option>
                <option value="chandigarh">Chandigarh</option>
                <option value="chhattisgarh">Chhattisgarh</option>
                <option value="delhi">Delhi</option>
                <option value="goa">Goa</option>
                <option value="gujarat">Gujarat</option>
                <option value="haryana">Haryana</option>
                <option value="himachal_pradesh">Himachal Pradesh</option>
                <option value="jammu_kashmir">Jammu and Kashmir</option>
                <option value="jharkhand">Jharkhand</option>
                <option value="karnataka">Karnataka</option>
                <option value="kerala">Kerala</option>
                <option value="lakshadweep">Lakshadweep</option>
                <option value="madhya_pradesh">Madhya Pradesh</option>
                <option value="maharashtra">Maharashtra</option>
                <option value="manipur">Manipur</option>
                <option value="meghalaya">Meghalaya</option>
                <option value="mizoram">Mizoram</option>
                <option value="nagaland">Nagaland</option>
                <option value="odisha">Odisha</option>
                <option value="puducherry">Puducherry</option>
                <option value="punjab">Punjab</option>
                <option value="rajasthan">Rajasthan</option>
                <option value="sikkim">Sikkim</option>
                <option value="tamil_nadu">Tamil Nadu</option>
                <option value="telangana">Telangana</option>
                <option value="tripura">Tripura</option>
                <option value="uttar_pradesh">Uttar Pradesh</option>
                <option value="uttarakhand">Uttarakhand</option>
                <option value="west_bengal">West Bengal</option>
            </select>
        </div>

        <!-- Pick Up Date -->
        <div class="pick">
            <label for="pickup-date">Pick Up Date</label>
            <input type="date" id="pickup-date" name="pickup-date" required>
        </div>

        <!-- Pick Up Time -->
        <div class="pick">
            <label for="pickup-time">Pick Up Time</label>
            <input type="time" id="pickup-time" name="pickup-time" required>
        </div>

        <!-- Return Date -->
        <div class="pick">
            <label for="return-date">Return Date</label>
            <input type="date" id="return-date" name="return-date" required>
        </div>

        <!-- Search Button -->
        <div class="pick">
            <input type="button" value="Search Car" onclick="window.location.href='carlist.html'" > 
        </div>
    </div>
</section>

    <!-- Car Rental Services Section -->
    <section id="cars" class="cars-section">
        <div class="container">
            <h2>Our Most Featured Cars</h2>
            <div class="car-list">
                <div class="car">
                    <img src="images/swift.jpg" alt="Car 1">
                    <h3>Suzuki Swift</h3>
                    <p>Comfortable for family trips.</p>
                    <p><strong>&#8377;1100/- per day</strong></p>
                    <a href="login.jsp" class="btn">Book Now</a>
                </div>
                <div class="car">
                    <img src="images/thar.jpeg" alt="Car 2">
                    <h3>Mahindra Thar 4X4</h3>
                    <p>Perfect for Enjoyment and Adventure travel.</p>
                    <p><strong>&#8377;2500/- per day</strong></p>
                    <a href="login.jsp" class="btn">Book Now</a>
                </div>
                <div class="car">
                    <img src="images/minivan.jpg" alt="Car 3">
                    <h3>Compact - MiniVan</h3>
                    <p>Economical and easy to park in the city.</p>
                    <p><strong>&#8377;2000/- per day</strong></p>
                    <a href="login.jsp" class="btn">Book Now</a>
                </div>
                <div class="car">
                    <img src="images/porsche.jpg" alt="Car 4">
                    <h3>Porsche</h3>
                    <p>Luxury and Passion</p>
                    <p><strong>&#8377;15000/- per day</strong></p>
                    <a href="login.jsp" class="btn">Book Now</a>
                </div>
                <div class="car">
                    <img src="images/mustang.jpg" alt="Car 5">
                    <h3>Ford Mustang</h3>
                    <p>Sporty Feelzzz</p>
                    <p><strong>&#8377;10000/- per day</strong></p>
                    <a href="login.jsp" class="btn">Book Now</a>
                </div>
                <div class="car">
                    <img src="images/supra.jpg" alt="Car 6">
                    <h3>Toyota Supra</h3>
                    <p>Lets Race on street Stutututuut</p>
                    <p><strong>&#8377;15000/- per day</strong></p>
                    <a href="login.jsp" class="btn">Book Now</a>
                </div>
            </div>
        </div>
    </section>
    <! Achieve section !>
<section class="achie-sec">
        <div class="txt">
            <p class="txt1">Our <span>Achievement</span></p>
            <p>Statisfactin Of our Customers </p>
        </div>

        <div class="main-sec">
            <div class="box">
                <p class="txt1">4000+</p>
                <p>Active Member</p>
            </div>

            <div class="box">
                <p class="txt1">70+</p>
                <p>Car Color</p>
            </div>

            <div class="box">
                <p class="txt1">80+</p>
                <p>Car Model</p>
            </div>

            <div class="box">
                <p class="txt1">10k</p>
                <p>Positive Rating</p>
            </div>
        </div>
    </section>
    <! Start sec !>
        <section class="start-sec">
        <div class="main-sec">
            <div class="left">
                <p class="txt1">Ready To Get Start?</p>
                <p class="txt2">At Car Rentals, we provide a seamless experience for renting cars, whether you're traveling for business or leisure. Our fleet of cars includes everything from compact city vehicles to luxurious sedans and SUVs. Our goal is to make your trip more convenient and enjoyable!.</p>
                <div class="btn">
                    <input type="button" value="Contact US" onclick="window.location.href='contact.jsp'" >
                </div>
            </div>

            <div class="right">
                <img src="images/verna.png" alt="">
            </div>
        </div>
    </section>


    <jsp:include page="footer.jsp"/>
</body>
</html>
