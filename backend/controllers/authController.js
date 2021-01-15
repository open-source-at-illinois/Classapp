
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

exports.register = async(req, res)=> { 
        const {netID, password} = req.body;
        
        const salt = bcrypt.genSaltSync(10);
        const encryptedPassword = bcrypt.hashSync(password, salt);

        const newUser = new User({
            netID: netID,
            password: encryptedPassword,
        });

        await newUser.save();
        console.log("user was saved");

        res.sendStatus(200);
    // },
};

//Login: 


exports.login = async(req, res) => {
        const {netID, password} = req.body;
        const {session} = req;
        const user = await User.findOne({netID: netID});
        if(!user){
            return res.status(400).send('Incorrect email');
        }
        console.log("Email found");
        const passMatch = await bcrypt.compareSync(req.body.password, user.password);
        if(!passMatch){
            return res.status(400).send('Incorrect password');
        }
        res.cookie("userData", user.netID, {maxAge: 360000});
        console.log("password accepted");
        session.user = user;
        res.sendStatus(200);
};

exports.getUser = async(req, res) => {
    console.log('hit');
    const { user } = req.session;
    if (user) {
      res.status(200).send(user);
    } else {
      res.sendStatus(401);
    }
};




// /** checks to see if the user is still logged in or maybe for a forgot password or if someone was trying to make a doublicate account or D all of the above or E none of the above
//  *
//  */
// //getUser:




// //logout: 
exports.logout = async(req, res) => {
        req.session.destroy();
        res.clearCookie(userData);
        console.log("user logged out");
        res.sendStatus(200);
    // }
};