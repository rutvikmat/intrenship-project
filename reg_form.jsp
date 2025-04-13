<%@ page import="java.sql.*" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
</head>
<style>
    body{
       }

body, html {
    height: 100%;
    width: 100%;
    margin: 0;
}
.login-section {
    background-image: url("images/bg.jpg"); /* Replace with your own car background image */
    background-size: cover;
    background-position: center;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* Login Container */
.login-container {
    background-color: rgba(0, 0, 0, 0.5); /* Dark overlay for text readability */
    padding: 40px;
    border-radius: 8px;
    max-width: 400px;
    width: 100%;
    color: white;
    text-align: center;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
}

/* Title Styling */
.login-container h1 {
    font-size: 2.5rem;
    margin-bottom: 20px;
    color: #f39c12; /* Golden color for emphasis */
    font-weight: 700;
}

/* Form Styling */
.login-form {
    display: flex;
    flex-direction: column;
}

/* Input Group Styling */
.input-group {
    margin-bottom: 20px;
    text-align: left;
}

.input-group label {
    display: block;
    margin-bottom: 5px;
    font-size: 1.1rem;
}

.input-group input {
    width: 100%; 
    padding: 12px;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 1rem;
    background-color: #f0f0f0;
    color: #333;
    transition: border 0.3s ease;
}

.input-group input:focus {
    border: 2px solid #f39c12; /* Golden border on focus */
}

/* Button Styling */
.login-btn {
    background-color: #f39c12; /* Golden yellow button */
    color: white;
    padding: 15px;
    font-size: 1.2rem;
    font-weight: bold;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.login-btn:hover {
    background-color: #e67e22; /* Slightly darker yellow */
}

/* Sign-Up Link */
.signup-link {
    margin-top: 20px;
}

.signup-link a {
    color: #f39c12;
    text-decoration: none;
    font-weight: bold;
}

.signup-link a:hover {
    text-decoration: underline;
}

/* Responsive Design */
@media (max-width: 768px) {
    .login-container {
        padding: 30px;
        width: 80%;
    }

    .login-container h1 {
        font-size: 2rem;
    }
} 
    }
</style>
<body>
<jsp:include page="header.jsp" />
<section class="login-section">
    <div class="login-container">

    <h1>Register</h1>
    <form method="POST" action="register.jsp">
        <div class="input-group">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        </div>
        <div class="input-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        </div>
        <div class="input-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        </div>
        <div class="input-group">
        <label for="confirm_password">Confirm Password:</label>
        <input type="password" id="confirm_password" name="confirm_password" required><br><br>
        </div>
        <button type="submit" class="login-btn" value="Register">Register</button>
    </form>
</body>
</html>
