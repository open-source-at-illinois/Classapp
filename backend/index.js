// // // // MODULES // // // //

require('dotenv').config();
const express = require('express');
const session = require('express-session');
const {SERVER_PORT, SESSION_SECRET} = process.env;
const app = express();
const mongoose = require('mongoose'); 
const mongoStore = require('connect-mongo')(session);

//** don't know if this is needed but the tutorial has it so it goes in 
const cookieParser = require('cookie-parser');


// // // // MIDDLEWARES // // // //
/** middleware: what connects the user and the server */
//middlewares are excuted between request and result 
app.use(express.json());
app.use(cookieParser()); 
//unique string as a password parameter 
app.use(session ({
    secret: SESSION_SECRET,
    resave: false,
    saveUninitialized: true,
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

app.post('/auth/register', ac.register);
app.post('/auth/login', ac.login);
app.post('/auth/logout', ac.logout);
app.get('/auth/getUser', ac.getUser);
/* Example code for how to talk to authController and how to get responses 
* Does nothing besides printing the info from the printSomething in authController
*/
// app.get(`/`, ac.printSomething);
// console.log("main page"); 
// app.get(`/info/print`, ac.printSomething);
// console.log("got the info from /info/print");



//app.get => get info
// app.post => create info
// app.delete => delete info
// app.put => update info