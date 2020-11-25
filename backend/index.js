// // // // MODULES // // // //

require('dotenv').config();

const express = require('express');

// Costa added
const session = require('express-session');

const {SERVER_PORT, SESSION_SECRET} = process.env;

const app = express();

const mongoose = require('mongoose'); 

// // // // MIDDLEWARES // // // //
//middlewares are excuted between request and result 

app.use(express.json());
//Costa Added
//unique string as a password parameter 
app.use(session ({
    secret: SESSION_SECRET,
    resave: false,
    saveUninitialized: true,
    cookie: { secure: false, maxAge: 3600000 }
}));



// // // // CONTROLLERS // // // //


const ac = require('./controllers/authController');

// // // // ENDPOINTS // // // //

// connecting 
app.listen(SERVER_PORT,()=>{
    console.log(`Magic at ${SERVER_PORT}`);
    mongoose.connect('mongodb+srv://test123:test123@cluster0.zjx9z.mongodb.net/test', {useNewUrlParser:true, useUnifiedTopology:true});
    mongoose.connection.once('open', ()=>{
    console.log('We have made contact with mongoDB')
    });
});


// app.post('/auth/register', ac.register);
app.post('/auth/login', ac.login);
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