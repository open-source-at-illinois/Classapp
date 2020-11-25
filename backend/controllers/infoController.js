// module.exports = {
//     printAnything: async(req, res)=>{ // request and result 
//         console.log('I have printed anything!');
//         //fetching some data

//         data = {a:1,b:2,c:3,};
//         res.status(200).send(data);
        
//         // res.sendStatus(200);
//     },

//     postAnything: async(req, res)=>{
//         console.log(req.body);
//         res.sendStatus(200);
//     }
// };

var request = new XMLHttpRequest()

request.open('GET', 'https://compass2g.illinois.edu', true);

request.onload = function(){
    var data = JSON.parse(this.response);

    if (request.status >= 200 && request.status < 400) {
        console.log('success!');
    } else {
        console.log('error');
    }
}

request.send();

//express-session
//login
//getUser
//logout