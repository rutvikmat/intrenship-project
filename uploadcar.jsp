 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tiffin Box owner</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
        }

        header {
            background: rgba(255, 194, 0, 0.65);
            color: black;
            padding: 1rem 0;
            text-align: center;
        }

        nav {
            display: flex;
            justify-content: center;
            background: #333;
            color: #fff;
            padding: 0.5rem 0;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            padding: 0.5rem 1rem;
            transition: background 0.3s;
        }

        nav a:hover {
            background: #ff9800;
        }

        .hero {
            background: url('homepage4.jpg') no-repeat center center/cover;
            background-size: 1300px  ;
            height: 60vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: transparent;
            text-align: center;
            padding: 0 2rem;
        }

        .hero h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        .hero p {
            font-size: 1.2rem;
        }

        .container {
            padding: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }
    form{
            background-color:rgba(255, 194, 0, 0.65);
            width: 500px;
            height: 100%;
            border-radius: 7px;
            color: black;
            display: flex; 
            flex-direction: column;
            justify-content: center;
            align-items: center;  
            margin-top: 85px;

        }

        
        form .container input {
        width: 100%;
        padding: 8px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 1rem;
        color: #333;
        transition: border 0.3s ease;
    }

        .menu {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1rem;
        }

        .menu-item {
            background: #f4f4f4;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: center;
        }

        .menu-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .menu-item h3 {
            margin: 0.5rem 0;
        }

        .menu-item p {
            padding: 0 1rem 1rem;
        }
        .menu .btn{
            background-color: rgba(255, 194, 0, 0.65);
            color: black;
            padding: 10px 25px;
            font-size: 1.1rem;
            font-weight: bold;
            border:none;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            z-index: 2;
        }

        footer {
            text-align: center;
            background: #333;
            color: #fff;
            padding: 1rem 0;
            margin-top: 2rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2rem;
            }

            .hero p {
                font-size: 1rem;
            }
        }

        @media (max-width: 480px) {
            nav {
                flex-direction: column;
            }

            nav a {
                padding: 0.5rem;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Tiffin Box</h1>
        <p>Delicious home-cooked meals delivered to your doorstep</p>
    </header>

        <nav>
        <a href="owner_home.jsp">home</a>
        <a href="viewcustomerdetails.jsp">View Customer</a>
        <a href="menu.html">Menu</a>
        <a href="vieworderdetails.jsp">View Order</a>
        <a href="viewfeedback.jsp">View Feedback</a>
        <a href="viewsuggestion.jsp">View Suggestion</a>
        <a href="changepassword.html">Change Password</a>
        <a href="homepage.html">Log Out</a>
    </nav>

<%

String car_name = session.getAttribute("car_name").toString();

%>
    <center>
    <form method="post" action="insertcarimg.jsp"  enctype="multipart/form-data"  >
        <div class="container">
            
            <h1>Insert Car</h1>
            <h3>car_name: </h3>
            <input type="text" name="car_name" required value=<%=car_name %> placeholder="Enter car name">
 
            <h3>Image: </h3>
            <input type="file" name="file" required> <br><br>

           

            <input class="btn" type="Submit" value="Submit" required><br>
            </div>
</form>
</center>
</body>
</html>