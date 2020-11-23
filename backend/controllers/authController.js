
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
const express = require('express')
const express = require('express-session')

const app = express()
app.use(session({
    'secret': 'authPassword212'
}))

// app.get('/', (req, res, next) => {
//     // req.session 
// }



app.get('/', function(req, res, next) {
    if (req.session.views) {
      req.session.views++
      res.setHeader('Content-Type', 'text/html')
      res.write('<p>views: ' + req.session.views + '</p>')
      res.write('<p>expires in: ' + (req.session.cookie.maxAge / 1000) + 's</p>')
      res.end()
    } else {
      req.session.views = 1
      res.end('welcome to the session demo. refresh!')
    }
  })

//login: 




//getUser:




//logout: 

