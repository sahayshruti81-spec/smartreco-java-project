<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmartReco | Sign Up</title>
    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #17386d, #477ee8);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .signup-box {
            background: white;
            width: 100%;
            max-width: 420px;
            padding: 35px;
            border-radius: 16px;
            box-shadow: 0 10px 35px #0002;
        }
        h1 { text-align: center; color: #244c8c; }
        p { text-align: center; color: #667085; }
        label { display: block; margin-top: 16px; }
        input {
            width: 100%;
            padding: 12px;
            margin-top: 7px;
            border: 1px solid #ccd3df;
            border-radius: 7px;
            font-size: 16px;
        }
        button {
            width: 100%;
            margin-top: 24px;
            padding: 13px;
            border: none;
            border-radius: 7px;
            background: #244c8c;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .bottom { margin-top: 20px; }
        a { color: #244c8c; }
    </style>
</head>
<body>
    <div class="signup-box">
        <h1>✦ SmartReco</h1>
        <p>Create your account</p>

        <form action="signup" method="post">
            <label for="full_name">Full Name</label>
            <input id="full_name" name="full_name"
                   type="text" required maxlength="100">

            <label for="email">Email</label>
            <input id="email" name="email"
                   type="email" required maxlength="150">

            <label for="password">Password</label>
            <input id="password" name="password"
                   type="password" required minlength="8">

            <button type="submit">Create Account</button>
        </form>

        <p class="bottom">
            Already have an account? <a href="login.jsp">Login</a>
        </p>
        <p><a href="index.jsp">Back to Home</a></p>
    </div>
</body>
</html>