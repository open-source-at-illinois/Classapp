module.exports = {
    printAnything: async(req, res)=>{ // request and result 
        console.log('I have printed anything!');
        //fetching some data

        data = {a:1,b:2,c:3,};
        res.status(200).send(data);
        
        // res.sendStatus(200);
    },

    postAnything: async(req, res)=>{
        console.log(req.body);
        res.sendStatus(200);
    }
};

//express-session
//login
//getUser
//logout