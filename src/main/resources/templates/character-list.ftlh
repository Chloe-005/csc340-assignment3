<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Character Gallery</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f4f6fc;
        }

        .navbar {
            background-color: #8baff7;
            padding: 12px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar h2 {
            color: white;
            margin: 0;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            margin-left: 15px;
            font-weight: bold;
        }

        .nav-links a:hover {
            text-decoration: underline;
        }

        .container {
            padding: 20px;
        }

        #search {
            padding: 8px;
            width: 250px;
            margin-bottom: 20px;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 15px;
        }

        .card {
            background: white;
            padding: 10px;
            border-radius: 6px;
            text-align: center;
        }

        .card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }
    </style>
</head>
<body>

<div class="navbar">
    <h2>Anime Characters</h2>
    <div class="nav-links">
        <a href="index.html">Home</a>
        <a href="details.html">Details</a>
        <a href="about.html">About</a>
        <a href="new-character-form.html">Add a Character</a>
    </div>
</div>

<div class="container">
    <h1>Character Gallery</h1>

    <input type="text" id="search" placeholder="Search characters..." onkeyup="filterCharacters()">

    <div class="grid" id="gallery">

        <#list characterList as character>
        <div class="card">
            <img src="https://tse1.mm.bing.net/th/id/OIP.Px212-jNBU_GkK4epoOTpgHaHZ?rs=1&pid=ImgDetMain&o=7&rm=3">
            <h3>${character.name}</h3>
            <p>Universe: ${character.universe}</p>
            <p>Role: ${character.role}</p>
            <a href="details.html">View Details</a>
        </div>
        </#list>

        <div class="card">
            <img src="https://tse1.mm.bing.net/th/id/OIP.Px212-jNBU_GkK4epoOTpgHaHZ?rs=1&pid=ImgDetMain&o=7&rm=3">
            <h3>Asuna Yuuki</h3>
            <p>Universe: Sword Art Online</p>
            <p>Role: Fighter</p>
            <a href="details.html">View Details</a>
        </div>

        <div class="card">
            <img src="https://th.bing.com/th/id/R.65744223cadb3428a5186a85e76e37f5?rik=0GuLyZMADFqOEA&pid=ImgRaw&r=0">
            <h3>Kenma Kozume</h3>
            <p>Universe: Haikyuu!!</p>
            <p>Role: Setter</p>
            <a href="details.html">View Details</a>
        </div>

        <div class="card">
            <img src="https://i.pinimg.com/736x/20/da/87/20da8758f59b1e1af09a20c6cda98577.jpg">
            <h3>Killua Zoldyck</h3>
            <p>Universe: Hunter x Hunter</p>
            <p>Role: Hunter</p>
            <a href="details.html">View Details</a>
        </div>

        <div class="card">
            <img src="https://th.bing.com/th/id/R.d4ea9da1578578672ba7f0630eb3e874?rik=T3mfaBoCcFRbBg&riu=http%3a%2f%2fimg4.wikia.nocookie.net%2f__cb20140523045537%2fnaruto%2fimages%2f3%2f36%2fNaruto_Uzumaki.png&ehk=5Vehh0lpTJ6hnEB9a3KgjYK9dKqrFIeaJ9jNhx1CNh8%3d&risl=&pid=ImgRaw&r=0">
            <h3>Naruto Uzumaki</h3>
            <p>Universe: Naruto</p>
            <p>Role: Jinchuriki</p>
            <a href="details.html">View Details</a>
        </div>

        <div class="card">
            <img src="https://imgix.ranker.com/user_node_img/50146/1002916016/original/1002916016-photo-u1338805499?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=500">
            <h3>Tanjiro Kamado</h3>
            <p>Universe: Demon Slayer</p>
            <p>Role: Demon Slayer</p>
            <a href="details.html">View Details</a>
        </div>

    </div>
</div>

<script>
function filterCharacters() {
    let input = document.getElementById("search").value.toLowerCase();
    let cards = document.getElementsByClassName("card");

    for (let card of cards) {
        let name = card.querySelector("h3").textContent.toLowerCase();
        card.style.display = name.includes(input) ? "block" : "none";
    }
}
</script>

</body>
</html>