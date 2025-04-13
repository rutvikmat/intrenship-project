<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Car</title>
</head>
<style>

    body {
        height: 100%;
        width: 100%;
        background-color: #f9f9f9;
        color: #333;
        line-height: 1.6;
    }

    .form-section {
       
        background-size: cover;
        background-position: center;
        height: 100vh;
        display: justify;
        justify-content: center;
        align-items: center;
        padding: 20px;
    }

    .form-container {
        background-color: rgba(0, 0, 0, 0.6);
        padding: 30px 40px;
        border-radius: 10px;
        max-width: 500px;
        width: 100%;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        color: white;
        text-align: center;
    }

    .form-container h1 {
        font-size: 2.2rem;
        margin-bottom: 20px;
        color: #f39c12;
        font-weight: 700;
    }

    .add-form {
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    .input-group {
        text-align: left;
    }

    .input-group label {
        font-size: 1rem;
        font-weight: 500;
        margin-bottom: 8px;
        display: inline-block;
    }

    .input-group input,
    .input-group select {
        width: 100%;
        padding: 12px;
        font-size: 1rem;
        border-radius: 5px;
        border: 1px solid #ccc;
        background-color: #f9f9f9;
        color: #333;
        transition: border 0.3s ease;
    }

    .input-group input:focus,
    .input-group select:focus {
        border-color: #f39c12;
        outline: none;
    }

    .form-btn {
        margin-top: 10px;
        background-color: #f39c12;
        color: white;
        padding: 15px;
        font-size: 1.2rem;
        font-weight: bold;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .form-btn:hover {
        background-color: #e67e22;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .form-container {
            padding: 20px 30px;
            width: 90%;
        }

        .form-container h1 {
            font-size: 2rem;
        }
    }
    


</style>

<body>
<header>
<jsp:include page="owner_header.jsp" />
</header>
<center>
 <section class="form-section">
    <div class="form-container">
        <h1>Insert Car</h1>
        <form class="add-form" action="insert_car.jsp" method="post">
            <div class="input-group">
                <label for="car_name">Car Name:</label>
                <input type="text" id="car_name" name="car_name" required>
            </div>
            <div class="input-group">
                <label for="car_model">Car Model:</label>
                <input type="text" id="car_model" name="car_model" required>
            </div>
            <div class="input-group">
                <label for="car_image">Car Image:</label>
                <input type="file" id="car_image" name="car_image" required placeholder="Image">
            </div>
            <div class="input-group">
                <label for="car_id">Car ID:</label>
                <input type="number" id="car_id" name="car_id" required>
            </div>
            <div class="input-group">
                <label for="license_plate">License Plate:</label>
                <input type="text" id="license_plate" name="license_plate" required>
            </div>
            <div class="input-group">
                <label for="status">Status:</label>
                <select id="status" name="status">
                    <option value="available">Available</option>
                    <option value="rented">Rented</option>
                    <option value="maintenance">Maintenance</option>
                </select>
            </div>
            <div class="input-group">
                <label for="rental_rate">Rental Rate:</label>
                <input type="number" id="rental_rate" name="rental_rate" step="0.01" required>
            </div>
            <div class="input-group">
                <label for="car_type">Car Type:</label>
                <input type="text" id="car_type" name="car_type">
            </div>
            <button class="form-btn" type="submit">Insert Car</button>
        </form>
    </div>
</section>
</center>

</body>
</html>
