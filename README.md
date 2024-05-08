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
- Replace dotenv credentials with your DB credentials
- Start Memcached
  - $ brew services start memcached
  - $ memcached -p 11211
- In cloned dir
  - $ node server.js
- Connect to localhost:3000 in a web browser Memcached Demonstration with MySQL in Node JS
