// // // // MODULES // // // //

require('dotenv').config();

const express = require('express');

// Costa added
const session = require('express-session');

const {SERVER_PORT} = process.env;

// // // // CONTROLLERS // // // //

const app = express();

//Costa Added
//unique string as a password parameter 
app.use(session ({
    'secret': 'password'
}))

const ac = require('./controllers/authController');
// // // // ENDPOINTS // // // //


app.listen(SERVER_PORT,()=>{
    console.log(`Magic at ${SERVER_PORT}`);
});

/* Example code for how to talk to authController and how to get responses 
* Does nothing besides printing the info from the printSomething in authController
* Costa Added
*/
// app.get(`/`, ac.printSomething);
// console.log("main page"); 
// app.get(`/info/print`, ac.printSomething);
// console.log("got the info from /info/print");



//app.get => get info
// app.post => create info
// app.delete => delete info
// app.put => update info