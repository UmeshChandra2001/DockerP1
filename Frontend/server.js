const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const axios = require('axios');

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));

// Serve static HTML form
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'views', 'form.html'));
});

// Handle form submission and forward to Flask backend
app.post('/submit', async (req, res) => {
  try {
    const response = await axios.post('http://backend:5000/process', req.body);
    res.send(`<h2>Response from Flask Backend:</h2><p>${response.data}</p>`);
  } catch (error) {
    res.status(500).send('Error communicating with backend');
  }
});

app.listen(3000, () => {
  console.log('Frontend running on http://localhost:3000');
});
