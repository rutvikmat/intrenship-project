<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Car Rental Service - Rent a car for your next trip.">
    <title>Car Rental Service</title>
    <link rel="icon" type="image/x-icon" href="images/logo.jpg">
    <style>
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
/* About Section */
.about-section {
    background-color: #fff;
    padding: 60px 0;
    text-align: center;
}

.about-section h2 {
    font-size: 32px;
    margin-bottom: 20px;
    color: #333;
}

.about-section p {
    font-size: 18px;
    margin-bottom: 15px;
    line-height: 1.8;
    color: #555;
}

.about-section ul {
    list-style-type: none;
    padding: 0;
    font-size: 18px;
}

.about-section ul li {
    margin-bottom: 10px;
    color: #555;
    position: relative;
    padding-left: 20px;
}

.about-section ul li:before {
    content: '\2022';
    color: white;
    font-weight: bold;
    position: absolute;
    left: 0;
}

/* Feedback Section */
.feedback-section {
    background-color: #f7f7f7;
    padding: 60px 20px;
    text-align: center;
}

.feedback-section h2 {
    font-size: 36px;
    margin-bottom: 40px;
    color: #2a2a2a;
    font-weight: bold;
    text-transform: uppercase;
}

.feedback-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 20px;
    max-width: 1200px;
    margin: 0 auto;
}

.feedback-card {
    background: linear-gradient(145deg, #ffffff, #f0f0f0);
    border: 1px solid #ddd;
    border-radius: 12px;
    padding: 20px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    position: relative;
    overflow: hidden;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.feedback-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
}

.quote-icon {
    font-size: 50px;
    color: #007bff;
    position: absolute;
    top: 10px;
    left: 20px;
    opacity: 0.1;
}

.feedback-card p {
    margin: 10px 0;
    color: #555;
    font-size: 16px;
    line-height: 1.6;
}

.feedback-card .rating, .feedback-card .ratings-count, .feedback-card .customer-name {
    margin-top: 10px;
    font-weight: bold;
    color: #333;
}

.feedback-card .customer-name {
    color: #007bff;
    font-style: italic;
}
    </style>
</head>
<body>
    <!-- Header Section -->
    <jsp:include page="customer_header.jsp"/>    
    <!-- About Us Section -->
    <section id="about" class="about-section">
        <div class="container">
            <h2>About Car Rental Services</h2>
            <p>At Car Rentals, we provide a seamless experience for renting cars, whether you're traveling for business or leisure. Our fleet of cars includes everything from compact city vehicles to luxurious sedans and SUVs. Our goal is to make your trip more convenient and enjoyable!</p>
            <p>We offer:</p>
            <ul>
                <li>Affordable rates with no hidden fees</li>
                <li>A wide range of vehicles to meet your needs</li>
                <li>Flexible booking options and 24/7 customer support</li>
                <li>Pickup and drop-off services for added convenience</li>
            </ul>
        </div>
    </section>

    <!-- Customer Feedback Section -->
    <section id="feedback" class="feedback-section">
        <div class="container">
            <h2>What Our Customers Say</h2>
            <div class="feedback-grid">
                <div class="feedback-card">
                    <div class="quote-icon">&#8220;</div>
                    <p>"The car was in excellent condition and the process was smooth from start to finish. Highly recommend!"</p>
                    <p class="rating"><strong>Rating:</strong> &#11088;&#11088;&#11088;&#11088; (4.5/5)</p>
                    <p class="ratings-count"><strong>Total Ratings:</strong> 1200+</p>
                    <p class="customer-name">- John D.</p>
                </div>
                <div class="feedback-card">
                    <div class="quote-icon">&#8220;</div>
                    <p>"Fantastic service! The pickup and drop-off option saved me so much time. Will definitely use this again."</p>
                    <p class="rating"><strong>Rating:</strong> &#11088;&#11088;&#11088;&#11088;&#11088; (5/5)</p>
                    <p class="ratings-count"><strong>Total Ratings:</strong> 900+</p>
                    <p class="customer-name">- Emily R.</p>
                </div>
                <div class="feedback-card">
                    <div class="quote-icon">&#8220;</div>
                    <p>"Very reasonable prices and a good variety of cars to choose from. The booking process was very user-friendly."</p>
                    <p class="rating"><strong>Rating:</strong> &#11088;&#11088;&#11088;&#11088;(4.2/5)</p>
                    <p class="ratings-count"><strong>Total Ratings:</strong> 750+</p>
                    <p class="customer-name">- Ahmed K.</p>
                </div>
                <div class="feedback-card">
                    <div class="quote-icon">&#8220;</div>
                    <p>"The SUV was perfect for our road trip. It was clean, well-maintained, and comfortable for long drives."</p>
                    <p class="rating"><strong>Rating:</strong>  &#11088;&#11088;&#11088;&#11088;&#11088; (5/5)</p>
                    <p class="ratings-count"><strong>Total Ratings:</strong> 650+</p>
                    <p class="customer-name">- Sophia L.</p>
                </div>
                <div class="feedback-card">
                    <div class="quote-icon">&#8220;</div>
                    <p> Friendly staff and excellent customer service. The process was transparent and hassle-free .</p>
                    <p class="rating"><strong>Rating:</strong>  &#11088;&#11088;&#11088;&#11088;&#11088; (4.7/5)</p>
                    <p class="ratings-count"><strong>Total Ratings:</strong> 800+</p>
                    <p class="customer-name">- Rajesh P.</p>
                </div>        
            <div class="feedback-card">
                <div class="quote-icon">&#8220;</div>
                <p> The car was in excellent condition and the process was smooth from start to finish. Highly recommend!</p>
                <p class="rating"><strong>Rating:</strong>  &#11088;&#11088;&#11088;&#11088; (4.5/5)</p>
                <p class="ratings-count"><strong>Total Ratings:</strong> 1200+</p>
                <p class="customer-name">- John D.</p>
            </div>
            <div class="feedback-card">
                <div class="quote-icon">&#8220;</div>
                <p>Fantastic service! The pickup and drop-off option saved me so much time. Will definitely use this again.</p>
                <p class="rating"><strong>Rating:</strong>  &#11088;&#11088;&#11088;&#11088;&#11088; (5/5)</p>
                <p class="ratings-count"><strong>Total Ratings:</strong> 900+</p>
                <p class="customer-name">- Emily R.</p>
            </div>
            <div class="feedback-card">
                <div class="quote-icon">&#8220;</div>
                <p>Very reasonable prices and a good variety of cars to choose from. The booking process was very user-friendly.</p>
                <p class="rating"><strong>Rating:</strong>  &#11088;&#11088;&#11088;&#11088; (4.2/5)</p>
                <p class="ratings-count"><strong>Total Ratings:</strong> 750+</p>
                <p class="customer-name">- Ahmed K.</p>
            </div>
            <div class="feedback-card">
                <div class="quote-icon">&#8220;</div>
                <p>The SUV was perfect for our road trip. It was clean, well-maintained, and comfortable for long drives.</p>
                <p class="rating"><strong>Rating:</strong>  &#11088;&#11088;&#11088;&#11088;&#11088; (5/5)</p>
                <p class="ratings-count"><strong>Total Ratings:</strong> 650+</p>
                <p class="customer-name">- Sophia L.</p>
            </div>
            <div class="feedback-card">
                <div class="quote-icon">&#8220;</div>
                <p>Friendly staff and excellent customer service. The process was transparent and hassle-free.</p>
                <p class="rating"><strong>Rating:</strong>  &#11088;&#11088;&#11088;&#11088; (4.7/5)</p>
                <p class="ratings-count"><strong>Total Ratings:</strong> 800+</p>
                <p class="customer-name">- Rajesh P.</p>
            </div>
        </div>
    </div>
</section>
    <!-- Footer Section -->
    <jsp:include page="footer.jsp"/>
</body>
</html>
