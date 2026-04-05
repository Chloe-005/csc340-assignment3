<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>edit Character</title>

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
            max-width: 500px;
            margin: auto;
            background: white;
            border-radius: 6px;
        }

        label {
            font-weight: bold;
        }

        input,
        textarea {
            width: 100%;
            padding: 8px;
            margin: 8px 0 15px 0;
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
        <h1>Edit Character</h1>

        <form id="edit-character" action="/characters/update/${character.characterId}" method="post">
            <label for="name">Character Name</label>
            <input type="text" id="name" name="name" value="${character.name}" />

            <label for="universe">Universe</label>
            <input type="text" id="universe" name="universe" value="${character.universe}" />

            <label for="role">Role</label>
            <input type="text" id="role" name="role" value="${character.role}" />

            <label for="image">Image File</label>
            <input type="text" id="image" name="image" value="${character.image!}" />

            <label for="description">Short Description</label>
            <textarea id="description" rows="4" name="description">${character.description}</textarea>

            <button type="submit">Save</button>
            <a href="/characters/${character.characterId?c}"><button type="button">Back</button></a>
        </form>
    </div>

</body>

</html>