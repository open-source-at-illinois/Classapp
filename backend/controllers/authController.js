module.exports = {
    printSomething: async(req, res)=>{ // request and result 
        console.log('I printed!');
        //fetching some data

        res.status(200).send(data);
        // res.sendStatus(200);
    }
};

//express-session
//login
//getUser
//logout