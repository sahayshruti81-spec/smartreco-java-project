<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmartReco | Login</title>
    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #17386d, #477ee8);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-box {
            background: white;
            width: 350px;
            max-width: 90%;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 25px #0002;
        }
        h1 { text-align: center; color: #244c8c; }
        p { text-align: center; color: #667085; }
        input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 7px;
        }
        button {
            width: 100%;
            padding: 12px;
            margin-top: 12px;
            border: none;
            border-radius: 7px;
            background: #ffbd59;
            font-weight: bold;
            cursor: pointer;
        }
        a { color: #244c8c; }
        .back { display: block; text-align: center; margin-top: 18px; }
    </style>
</head>
<body>
    <div class="login-box">
        <h1>✦ SmartReco</h1>
        <p>Welcome back! Please log in.</p>

        <form action="login" method="post">
            <input type="email" name="email" placeholder="Email address" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>

        <p>Don't have an account? <a href="signup.jsp">Sign Up</a></p>
        <a class="back" href="index.jsp">Back to Home</a>
    </div>
</body>
</html>