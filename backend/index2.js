// Do made this file so that he can test stuff without installing stuff that might not be on his computer already

// // // // MODULES // // // //

require('dotenv').config();

const express = require('express');

// Costa added
const session = require('express-session');

const {SERVER_PORT, SESSION_SECRET} = process.env;

const app = express();

// // // // CONTROLLERS // // // //

const ic = require('./controllers/infoController');

app.listen(SERVER_PORT,()=>{
    console.log(`Magic at ${SERVER_PORT}`);
});

app.get('/get/announcements', ic.getAnnouncements);