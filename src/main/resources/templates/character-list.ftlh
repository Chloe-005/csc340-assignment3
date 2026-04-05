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
            <a href="/characters/all">Home</a>
            <a href="/characters/about">About</a>
            <a href="/characters/add">Add a Character</a>
        </div>
    </div>

    <div class="container">
        <h1>Character Gallery</h1>

        <input type="text" id="search" placeholder="Search characters..." onkeyup="filterCharacters()">

        <div class="grid" id="gallery">

            <#list characterList as character>
                <div class="card">
                    <img
                        src="https://via.placeholder.com/400x300">
                    <h3>${character.name}</h3>
                    <p>Universe: ${character.universe}</p>
                    <p>Role: ${character.role}</p>
                    <a href="/characters/${character.characterId?c}">View Details</a>
                </div>
            </#list>

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