<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SmartReco | AI Recommendations</title>

<style>
* { box-sizing: border-box; margin: 0; padding: 0; }
body {
    font-family: Arial, sans-serif;
    background: #f4f7fc;
    color: #17233d;
}
nav {
    background: #142b55;
    color: white;
    padding: 20px 8%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: 12px;
}
.logo { font-size: 25px; font-weight: bold; }
nav a {
    color: white;
    text-decoration: none;
    margin-left: 18px;
}
.hero {
    text-align: center;
    padding: 75px 20px;
    color: white;
    background: linear-gradient(135deg, #17386d, #477ee8);
}
.hero h1 { font-size: 42px; margin-bottom: 15px; }
.hero p { font-size: 18px; margin-bottom: 28px; }
.search {
    width: min(600px, 95%);
    margin: auto;
    display: flex;
    gap: 8px;
}
.search input {
    flex: 1;
    min-width: 0;
    padding: 15px;
    border: none;
    border-radius: 8px;
    font-size: 16px;
}
button {
    border: none;
    border-radius: 8px;
    padding: 14px 20px;
    background: #ffbd59;
    color: #17233d;
    font-weight: bold;
    cursor: pointer;
}
section { padding: 45px 8%; }
h2 { text-align: center; margin-bottom: 28px; }
.categories {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(210px, 1fr));
    gap: 22px;
}
.card {
    background: white;
    padding: 28px 20px;
    border-radius: 15px;
    text-align: center;
    box-shadow: 0 5px 20px #142b5510;
    transition: transform .2s;
}
.card:hover { transform: translateY(-5px); }
.emoji { font-size: 42px; margin-bottom: 15px; }
.card h3 { margin-bottom: 10px; color: #244c8c; }
.card p { color: #667085; line-height: 1.5; }
.card button { margin-top: 18px; }
#result {
    text-align: center;
    margin-top: 22px;
    font-weight: bold;
    color: #244c8c;
}
footer {
    text-align: center;
    padding: 22px;
    background: #142b55;
    color: white;
}
@media(max-width: 600px) {
    .hero h1 { font-size: 32px; }
    nav { justify-content: center; }
    nav a { margin: 0 6px; }
}
</style>
</head>

<body>
<nav>
    <div class="logo">✦ SmartReco</div>
    <div>
        <a href="#home">Home</a>
        <a href="#categories">Explore</a>
        <a href="#about">About</a>
        <a href="login.jsp">Login</a>
       <a href="signup.jsp">Sign Up</a>
    </div>
</nav>

<div class="hero" id="home">
    <h1>Discover What You'll Love</h1>
    <p>Personalized recommendations for your everyday interests.</p>
    <div class="search">
        <input id="searchInput" type="text"
               placeholder="Search movies, products, music, books...">
        <button onclick="searchItems()">Search</button>
    </div>
    <div id="result"></div>
</div>

<section id="categories">
    <h2>Explore Categories</h2>
    <div class="categories">
        <div class="card">
            <div class="emoji">🎬</div>
            <h3>Movies & Shows</h3>
            <p>Discover movies and shows for your next watch.</p>
            <button onclick="chooseCategory('Movies & Shows')">Explore</button>
        </div>
        <div class="card">
            <div class="emoji">🛍️</div>
            <h3>Shopping</h3>
            <p>Explore products that match your interests.</p>
            <button onclick="chooseCategory('Shopping')">Explore</button>
        </div>
        <div class="card">
            <div class="emoji">🎵</div>
            <h3>Music</h3>
            <p>Find music to suit your mood.</p>
            <button onclick="chooseCategory('Music')">Explore</button>
        </div>
        <div class="card">
            <div class="emoji">📚</div>
            <h3>Books</h3>
            <p>Discover stories and books worth reading.</p>
            <button onclick="chooseCategory('Books')">Explore</button>
        </div>
    </div>
</section>

<section id="about">
    <h2>Why SmartReco?</h2>
    <div class="categories">
        <div class="card">
            <div class="emoji">🎯</div>
            <h3>Personalized</h3>
            <p>Designed around your interests.</p>
        </div>
        <div class="card">
            <div class="emoji">🤖</div>
            <h3>AI Ready</h3>
            <p>A platform for intelligent recommendations.</p>
        </div>
        <div class="card">
            <div class="emoji">⚡</div>
            <h3>Easy to Use</h3>
            <p>A clean and simple experience.</p>
        </div>
    </div>
</section>

<footer>
    © 2026 SmartReco | AI Recommendation System
</footer>

<script>
function chooseCategory(category) {
    document.getElementById("result").textContent =
        "You selected: " + category;
}
function searchItems() {
    const query = document.getElementById("searchInput").value.trim();
    document.getElementById("result").textContent = query
        ? 'Search entered: "' + query + '". Recommendation data can be connected next.'
        : "Please enter something to search.";
}
</script>
</body>
</html>