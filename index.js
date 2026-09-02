const express = require('express');
const app = express();
const PORT = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.json({
    status: "success",
    message: "Node.js Application Deployed Successfully!",
    timestamp: new Date()
  });
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`Application running on port ${PORT}`);
});
