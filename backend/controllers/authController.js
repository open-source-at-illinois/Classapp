
/* Example on how authController replys and how auth should talk to the server
* When running it will respond with a 200 okay and send the print statement back over to print on main page
*
*/
// module.exports = {
//     printSomething: async(req, res)=>{ // request and result 
//         console.log('I printed!');
//         res.status(200).send("hello world");
//         //fetching some data

//         // res.status(200).send();
//         // res.sendStatus(200);
//     }
// };

/*express-session: Creates a session that allows the user to login and do all the fun things. 
*does not inhearently track the user need to assign identifiers uninquly for each new user if you want to track
*/





/*account creation: need database set up before 
*
*
*/ 

const bcrypt = require('bcryptjs');
const User = require('../models/user');

module.exports = {
    register: async(req, res)=>{
        // req.body.netID
        // req.body.password
        const {netID, password} = req.body;
        
        const salt = bcrypt.genSaltSync(10);
        const encryptedPassword = bcrypt.hashSync(password, salt);

        const newUser = new User({
            netID: netID,
            password: encryptedPassword,
        });

        await newUser.save();
        console.log('user was saved');

        res.sendStatus(200);
        // password => bcrypted password    

        //{netid:netID,
        // password:bcrypted password}
    },
};

//Login: 

module.exports = {
    login: async(req, res) => {
        const {netID, password} = req.body;
        const user = await User.findOne({netID: netID});
        if(!user){
            return res.status(400).send('Incorrect email');
        }
        console.log("Email found");
        const passMatch = await bcrypt.compareSync(req.body.password, user.password);
        if(!passMatch){
            return res.status(400).send('Incorrect password');
        }
        console.log("password accepted");
        res.sendStatus(200);
    }
};






//getUser:




//logout: 

// {
//     "netID": "pg12",
//     "password":"password"
// }