<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental - Our Fleet</title>
    <link rel="icon" type="image/x-icon" href="images/logo.jpg">
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body and Page Wrapper */
                body {
        display: grid;
        height: 100vh;
        grid-template-rows: auto 1fr auto;
        }
        

        /* Footer Section Styling */
        footer {
            position: relative;
             bottom: 0;
            background-color: #000000;
            padding: 20px 0;
            color: white;
           
            width: 100%;
            text-align: center;
        }

        footer p {
            align: center;
            margin-bottom: 10px;
        }
       
         }

        footer .social-media {
            margin-top: 10px;
        }

        footer .social-media a {
            color: white;
            text-decoration: center;
            margin: 0 15px;
            font-size: 1.1rem;
            transition: color 0.3s ease;
        }

        footer .social-media a:hover {
            color: #f39c12; /* Golden Yellow */
        }
    </style>
</head>
<body>
    <footer>
    <!-- Page Content -->
      
        <div class="container">
            <p>&copy; 2024 Car Rental Service. All rights reserved.</p><br>
            <div class="social-media">
                <a href="#">Facebook</a>
                <a href="#">Instagram</a>
                <a href="#">Twitter</a>
            </div>
        </div>
   
    </footer>
</body>
</html>
