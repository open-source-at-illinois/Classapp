// // // // MODULES // // // //

require('dotenv').config();

const express = require('express');

const {SERVER_PORT} = process.env;

// // // // CONTROLLERS // // // //

const app = express();
const ac = require('./controllers/authController');

// // // // ENDPOINTS // // // //


app.listen(SERVER_PORT,()=>{
    console.log(`Magic at ${SERVER_PORT}`);
});

app.get(`/info/print`, ac.printSomething);

// app.get => get info
// app.post => create info
// app.delete => delete info
// app.put => update info