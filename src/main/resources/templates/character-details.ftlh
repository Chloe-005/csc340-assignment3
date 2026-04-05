<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Character Details</title>

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
            max-width: 800px;
            margin: auto;
        }

        .character-img {
            width: 100%;
            max-width: 400px;
            display: block;
            margin-bottom: 20px;
        }

        .action-list {
            list-style: none;
            padding: 0;
            max-width: 300px;
        }

        .action-list li {
            border: 1px solid #416ec7;
            border-radius: 8px;
            margin-bottom: 10px;
            background-color: #416ec7;
        }

        .action-list a {
            display: block;
            padding: 10px 15px;
            text-decoration: none;
            color: #ffffff;
            font-weight: 500;
            text-align: center;
        }

        .action-list a:hover {
            background-color: #345bb0;
            color: #ffffff;
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
        <h1>${character.name}</h1>

        <img src="https://via.placeholder.com/400x300" alt="Character image" class="character-img">

        <h2>Character details</h2>
        <p><strong>Universe:</strong> ${character.universe}</p>
        <p><strong>Role:</strong> ${character.role}</p>

        <h2>Backstory</h2>
        <p>${character.description}</p>

        <ul class="action-list">
            <li>
                <a href="/characters/updateForm/${character.characterId?c}">Edit Character</a>
            </li>
            <li>
                <a href="/characters/all">Back to Gallery</a>
            </li>
        </ul>

    </div>

</body>

</html>