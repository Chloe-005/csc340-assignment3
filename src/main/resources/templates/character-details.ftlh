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

        button {
            padding: 10px 15px;
            background-color: #8baff7;
            color: white;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }

        button:hover {
            opacity: 0.9;
        }

        .action-list {
            list-style: none;
            padding: 0;
            max-width: 300px;
        }

        .action-list li {
            margin-bottom: 10px;
        }

        .action-list a {
            display: block;
            padding: 10px 15px;
            background-color: #8baff7;
            color: white;
            text-decoration: none;
            font-weight: bold;
            text-align: center;
            border-radius: 6px;
        }

        .action-list a:hover {
            opacity: 0.9;
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

        <img src="${character.image}" alt="Character image" class="character-img">

        <h2>Character details</h2>
        <p><strong>Universe:</strong> ${character.universe}</p>
        <p><strong>Role:</strong> ${character.role}</p>

        <h2>Description</h2>
        <p>${character.description}</p>

        <ul class="action-list">
            <li>
                <a href="/characters/updateForm/${character.characterId}">Edit Character</a>
            </li>
            <li>
                <a href="/characters/delete/${character.characterId}"
                    onclick="return confirm('Are you sure you want to delete this character');">Delete</a>
            </li>
            <li>
                <a href="/characters/all">Back to Gallery</a>
            </li>
        </ul>

    </div>

</body>

</html>