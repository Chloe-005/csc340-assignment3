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
    <h1>${character.name}</h1>

    <img src="https://th.bing.com/th/id/R.11c25d03ee017edfeff55e67d3f7f201?rik=sDxyKtXSq7qetA&pid=ImgRaw&r=0" alt="Character image" class="character-img">

    <h2>Character details</h2>
    <p><strong>Universe:</strong> Sword Art Online</p>
    <p><strong>Role:</strong> Fighter</p>
    <p><strong>Power Level:</strong> High</p>
    <p><strong>Species:</strong> Human</p>

    <h2>Backstory</h2>
    <p>
        Asuna Yuuki is a skilled swordswoman trapped in the virtual reality game
        Sword Art Online. She becomes one of the strongest players and
        joins the Knights of the Blood Oath, where she helps lead the fight to
        free everyone from the game.
    </p>

    <h2>Abilities</h2>
    <ul>
        <li>Advanced sword fighting skills</li>
        <li>Healing skills</li>
        <li>Rapier Mastery</li>
    </ul>

    <h2>First Appearance</h2>
    <p>
        She first shows up in epiode one of the anime. She is a recurring 
        character in Sword Art online.
    </p>

    <h2>Personality</h2>
    <p>
        She is kind, strong willed, and determined. These traits help her standout
        in Sword Art Online.
    </p>
</div>

</body>
</html>