## Memcached Demonstration with MySQL in Node JS

## How to run
### (MacOS)
- Install homebrew if not already present
  - $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
- Install memcached if not already present
  - $ brew install memcached
- Install Node.js if not already present
  - $ brew install node
- Run memcached.sql in editor of choice
- Replace dotenv credentials with your DB credentials inside db.js
```
const pool = mysql.createPool( {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    database: process.env.DB_NAME,
    password: process.env.DB_PASS,
    port: 3306,
});
```
- Start Memcached
  - $ brew services start memcached
  - $ memcached -p 11211
- In cloned dir
  - $ node server.js
- Connect to localhost:3000 in a web browser

