<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Car Rental Service - Rent a car for your next trip.">
    <title>Car Rental Service</title>
    <link rel="icon" type="image/x-icon" href="images/logo.jpg">
    <style>

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
</style>
</head>
<body>
    <!-- Header Section -->
    <jsp:include page="header.jsp" />
    
    <!-- Booking Section -->
    <section id="book" class="booking-section">
        <div class="container">
            <h2>Enquiry Booking Your Ride</h2>
            <form action="enquiryBooking.jsp" method="post">

                <label for="Name">Your Name:</label>
                <input type="text" id="user_name" name="user_name" placeholder="Enter Name" required >

                <label for="Email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter Email" required>

                <label for="phone">Phone Number:</label>
                <input type="text" id="phone" name="user_contact" placeholder="Enter Number" required >

                <label for="car_name">Select Car:</label>
                <select id="car_name" name="car_name" required>
                    <option value="" disabled selected>Select your car</option>
                    
                    <!-- Hatchbacks -->
                    <optgroup label="Hatchbacks">
                        <option value="Maruti Suzuki Swift">Maruti Suzuki Swift</option>
                        <option value="Hyundai Grand i10 Nios">Hyundai Grand i10 Nios</option>
                        <option value="Tata Tiago">Tata Tiago</option>
                        <option value="Renault Kwid">Renault Kwid</option>
                        <option value="Maruti Suzuki Baleno">Maruti Suzuki Baleno</option>
                        <option value="Toyota Glanza">Toyota Glanza</option>
                    </optgroup>
                    
                    <!-- Sedans -->
                    <optgroup label="Sedans">
                        <option value="Honda City">Honda City</option>
                        <option value="Hyundai Verna">Hyundai Verna</option>
                        <option value="Maruti Suzuki Ciaz">Maruti Suzuki Ciaz</option>
                        <option value="Skoda Slavia">Skoda Slavia</option>
                        <option value="Volkswagen Virtus">Volkswagen Virtus</option>
                        <option value="Toyota Yaris">Toyota Yaris</option>
                    </optgroup>
                    
                    <!-- SUVs -->
                    <optgroup label="SUVs">
                        <option value="Hyundai Creta">Hyundai Creta</option>
                        <option value="Kia Seltos">Kia Seltos</option>
                        <option value="Tata Nexon">Tata Nexon</option>
                        <option value="Mahindra XUV700">Mahindra XUV700</option>
                        <option value="Toyota Fortuner">Toyota Fortuner</option>
                        <option value="MG Hector">MG Hector</option>
                    </optgroup>
                    
                    <!-- Compact SUVs -->
                    <optgroup label="Compact SUVs">
                        <option value="Maruti Suzuki Brezza">Maruti Suzuki Brezza</option>
                        <option value="Hyundai Venue">Hyundai Venue</option>
                        <option value="Tata Punch">Tata Punch</option>
                        <option value="Nissan Magnite">Nissan Magnite</option>
                        <option value="Kia Sonet">Kia Sonet</option>
                        <option value="Renault Kiger">Renault Kiger</option>
                    </optgroup>
                    
                    <!-- Luxury Cars -->
                    <optgroup label="Luxury Cars">
                        <option value="Mercedes-Benz C-Class">Mercedes-Benz C-Class</option>
                        <option value="BMW 3 Series">BMW 3 Series</option>
                        <option value="Audi Q3">Audi Q3</option>
                        <option value="Jaguar XE">Jaguar XE</option>
                        <option value="Volvo XC40">Volvo XC40</option>
                    </optgroup>
                    
                    <!-- Electric Vehicles (EVs) -->
                    <optgroup label="Electric Vehicles (EVs)">
                        <option value="Tata Nexon EV">Tata Nexon EV</option>
                        <option value="MG ZS EV">MG ZS EV</option>
                        <option value="Hyundai Kona Electric">Hyundai Kona Electric</option>
                        <option value="Mahindra XUV400">Mahindra XUV400</option>
                        <option value="BYD Atto 3">BYD Atto 3</option>
                    </optgroup>
                    
                    <!-- MPVs -->
                    <optgroup label="MPVs">
                        <option value="Toyota Innova Crysta">Toyota Innova Crysta</option>
                        <option value="Maruti Suzuki Ertiga">Maruti Suzuki Ertiga</option>
                        <option value="Kia Carens">Kia Carens</option>
                        <option value="Mahindra Marazzo">Mahindra Marazzo</option>
                        <option value="Renault Triber">Renault Triber</option>
                    </optgroup>
                </select>

          

            <label for="select-district">Select District:</label>
            <select id="location" name="location" required>
                <option value="" disabled selected>Select your district</option>
                
                <!-- Karnataka Districts -->
                <optgroup label="Karnataka">
                    <option value="Bagalkot">Bagalkot</option>
                    <option value="Bangalore Rural">Bangalore Rural</option>
                    <option value="Bangalore Urban">Bangalore Urban</option>
                    <option value="Belagavi">Belagavi</option>
                    <option value="Bellary">Bellary</option>
                    <option value="Bidar">Bidar</option>
                    <option value="Chamarajanagar">Chamarajanagar</option>
                    <option value="Chikballapur">Chikballapur</option>
                    <option value="Chikkamagaluru">Chikkamagaluru</option>
                    <option value="Chitradurga">Chitradurga</option>
                    <option value="Dakshina Kannada">Dakshina Kannada</option>
                    <option value="Davanagere">Davanagere</option>
                    <option value="Dharwad">Dharwad</option>
                    <option value="Gadag">Gadag</option>
                    <option value="Gulbarga">Gulbarga</option>
                    <option value="Hassan">Hassan</option>
                    <option value="Haveri">Haveri</option>
                    <option value="Kodagu">Kodagu</option>
                    <option value="Kolar">Kolar</option>
                    <option value="Koppal">Koppal</option>
                    <option value="Mandya">Mandya</option>
                    <option value="Mysore">Mysore</option>
                    <option value="Raichur">Raichur</option>
                    <option value="Ramanagara">Ramanagara</option>
                    <option value="Shimoga">Shimoga</option>
                    <option value="Tumkur">Tumkur</option>
                    <option value="Udupi">Udupi</option>
                    <option value="Uttara Kannada">Uttara Kannada</option>
                    <option value="Vijayapura">Vijayapura</option>
                    <option value="Yadgir">Yadgir</option>
                </optgroup>
                
                <!-- Maharashtra Districts -->
                <optgroup label="Maharashtra">
                    <option value="Ahmednagar">Ahmednagar</option>
                    <option value="Akola">Akola</option>
                    <option value="Amravati">Amravati</option>
                    <option value="Aurangabad">Aurangabad</option>
                    <option value="Beed">Beed</option>
                    <option value="Bhandara">Bhandara</option>
                    <option value="Buldhana">Buldhana</option>
                    <option value="Chandrapur">Chandrapur</option>
                    <option value="Dhule">Dhule</option>
                    <option value="Gadchiroli">Gadchiroli</option>
                    <option value="Gondia">Gondia</option>
                    <option value="Hingoli">Hingoli</option>
                    <option value="Jalgaon">Jalgaon</option>
                    <option value="Jalna">Jalna</option>
                    <option value="Kolhapur">Kolhapur</option>
                    <option value="Latur">Latur</option>
                    <option value="Mumbai City">Mumbai City</option>
                    <option value="Mumbai Suburban">Mumbai Suburban</option>
                    <option value="Nagpur">Nagpur</option>
                    <option value="Nanded">Nanded</option>
                    <option value="Nandurbar">Nandurbar</option>
                    <option value="Nashik">Nashik</option>
                    <option value="Osmanabad">Osmanabad</option>
                    <option value="Palghar">Palghar</option>
                    <option value="Parbhani">Parbhani</option>
                    <option value="Pune">Pune</option>
                    <option value="Raigad">Raigad</option>
                    <option value="Ratnagiri">Ratnagiri</option>
                    <option value="Sangli">Sangli</option>
                    <option value="Satara">Satara</option>
                    <option value="Sindhudurg">Sindhudurg</option>
                    <option value="Solapur">Solapur</option>
                    <option value="Thane">Thane</option>
                    <option value="Wardha">Wardha</option>
                    <option value="Washim">Washim</option>
                    <option value="Yavatmal">Yavatmal</option>
                </optgroup>
            </select>


                <label for="pickup-date">Pickup Date:</label>
                <input type="date" id="pickup_date" name="pickup_date" required>
                
                <label for="return-date">Return Date:</label>
                <input type="date" id="return_date" name="return_date" required>
                
                <button type="submit" class="btn">Enquiry Booking</button>
            </form>
        </div>
    </section>

    <!-- Footer Section -->
    <jsp:include page="footer.jsp" />
</body>
</html>
