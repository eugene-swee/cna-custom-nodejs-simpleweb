// Import the Express.js framework
const express = require('express');

// Create an Express application
const app = express();

// Define a route that responds with "Hello, World!" for the root path
app.get('/', (req, res) => {
  res.send('Hello, World!');
});

// Set the server to listen on port 3000
const port = 3000;
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
