const mongoose = require('mongoose');
const Schema = mongoose.Schema;


const userSchema = new Schema({  //dont need to define id because mongoDB does it for us
    netID: { 
        type: String,
        required: true
    },
    password: {
        type: String,
        required: true,
        minlength: 5,
        maxlength: 100000000
    }
})


module.exports = mongoose.model('user', userSchema);
