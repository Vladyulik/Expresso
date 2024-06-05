'use strict';

const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
    res.send('Hi!');
});

app.get('/coffee', (req, res) => {
    res.send('Free energy (╯°□°）╯︵ ┻━┻)');
});

app.listen(port, () => {
    console.log(`Server started, port: ${port}`);
});
