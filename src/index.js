const express = require('express');
const app = express();

// Settings
app.set('port', 3000);

// Middlewares
app.use(express.json());

// Routes
app.use(require('./routes/employees'));

// Starting the server
app.listen(3000, () => {
  console.log(`Server on port`);
});
