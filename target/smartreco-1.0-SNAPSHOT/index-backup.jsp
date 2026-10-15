<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>SmartReco - AI Recommendation System</title>
    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f6fb;
            color: #20243a;
        }
        header {
            background: #24245b;
            color: white;
            padding: 22px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        header h2 { margin: 0; }
        .hero {
            text-align: center;
            padding: 75px 20px;
            background: linear-gradient(135deg, #24245b, #7165d9);
            color: white;
        }
        .hero h1 { font-size: 42px; margin-bottom: 15px; }
        .hero p { font-size: 18px; line-height: 1.6; }
        .btn {
            display: inline-block;
            margin-top: 18px;
            padding: 13px 25px;
            border-radius: 8px;
            background: white;
            color: #24245b;
            text-decoration: none;
            font-weight: bold;
        }
        .section { padding: 40px 8%; text-align: center; }
        .cards {
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
        }
        .card {
            background: white;
            padding: 25px;
            border-radius: 14px;
            width: 250px;
            box-shadow: 0 5px 20px #20243a12;
        }
        .card h3 { color: #5147ad; }
        footer {
            text-align: center;
            padding: 20px;
            background: #24245b;
            color: white;
        }
    </style>
</head>
<body>
    <header>
        <h2>✨ SmartReco</h2>
        <span>AI Recommendation System</span>
    </header>

    <section class="hero">
        <h1>Discover What You’ll Love</h1>
        <p>Smart recommendations powered by Artificial Intelligence.</p>
        <a href="#features" class="btn">Explore Features</a>
    </section>

    <section class="section" id="features">
        <h2>What SmartReco Offers</h2>
        <div class="cards">
            <div class="card">
                <h3>🎯 Personalized</h3>
                <p>Recommendations tailored to user preferences.</p>
            </div>
            <div class="card">
                <h3>🤖 AI Powered</h3>
                <p>Discover relevant choices with intelligent suggestions.</p>
            </div>
            <div class="card">
                <h3>⚡ Easy to Use</h3>
                <p>A simple and user-friendly experience.</p>
            </div>
        </div>
    </section>

    <footer>© 2026 SmartReco | AI Recommendation System</footer>
</body>
</html>