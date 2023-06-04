'use strict';

const express = require('express');

//Constants
const PORT = 8080;
const HOST = '0.0.0.0';

//App
const app = express();
app.get('/', (req, res) => {
    res.send('Hello World After Changes');
});

app.listen(PORT, HOST, () => {
    console.log('Runnung on http://${HOST}:{PORT}');
});
