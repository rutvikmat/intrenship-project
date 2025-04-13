<!DOCTYPE html>
<html>
<head>
    <title>Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .container {
            max-width: 500px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        textarea {
            width: 100%;
            height: 100px;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            resize: none;
        }
        button {
            margin-top: 15px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>We Value Your Feedback</h1>
        <form action="submitFeedback.jsp" method="post">
            <label for="feedback">Your Feedback:</label><br>
            <textarea name="feedback" id="feedback" placeholder="Write your feedback here..." required></textarea><br>
            <button type="submit">Submit Feedback</button>
        </form>
    </div>
</body>
</html>
