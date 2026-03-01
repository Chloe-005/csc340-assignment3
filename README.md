# csc340-assignment3

## Installation

### Requirements
- Java
- PostgreSQL (Neon.tech)
- Git

### Steps
1. Clone the repository
2. Open the project in VS Code
3. Update the database settings in src/main/resources/application.properties
4. Run the application: the API will run at http://localhost:8080

## API Endpoints

- GET /characters  
Returns a list of all characters

- GET /characters/{id}  
Returns a character by its ID

- POST /characters  
Creates a new character

Example request body:

```Example
 {
  "name": "Asuna",
  "description": "Example",
  "role": "fighter",
  "universe": "Sword Art Online"
   }
   ```
- PUT /characters/{id}  
Updates an existing character

- DELETE /characters/{id}  
Deletes a character by ID

- GET /characters/universe/{universe}  
Returns all characters in a universe

- GET /characters/role/{role}  
Returns all characters in a role

- GET /characters/search?name=value  
Returns characters with name that contains the string

## Demo Video

Link to demo video: 
https://uncg-my.sharepoint.com/:v:/g/personal/carhodes_uncg_edu/IQAtX2vi7pV7QYujo3f1Hui9ARkXF6AhnxxHZRli0KlYo0E?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=eNdRKh
