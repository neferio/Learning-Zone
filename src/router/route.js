//router
const express = require('express')
const router=new express.Router()
var bodyParser = require('body-parser');
router.use(bodyParser.json());
router.use(bodyParser.urlencoded({ extended: true })); 
var flash = require('connect-flash');
router.use(flash());
var session = require('express-session');
router.use(session({ cookie: { maxAge: 60000 }, 
    secret: 'woot',
    resave: false, 
    saveUninitialized: false}));
// const student = require("../model/command");

const sql = require("../db/database");

//end points
router.get('/profile',(req,res)=>{
    if (req.session.loggedin && req.session.loggedin == "true") {
		let nameq=req.flash('username');
        res.render('profile',{
            name:nameq
        })
	} else {
		res.render('notfound');
	}
    
})
// router.post('/book', booking.create);
router.post('/signup',(req,res)=>{
    if (!req.body) {
        res.status(400).send({
          message: "Nothing send here"
        });
    }
    const record=[[ req.body.username,req.body.email, req.body.password] ];
    let rec=[[req.body.username]];

    sql.query("SELECT * FROM VALID WHERE name=?", [rec], function (err, result) {
        // if any error while executing above query, throw error
        if (err) throw err;
        // if there is no error, you have the result
        //console.log(result);
        if(result.length==0){
            sql.query("INSERT INTO VALID (name,email,password) VALUES ?", [record], function (err, result) {
                // if any error while executing above query, throw error
                if (err) throw err;
                // if there is no error, you have the result
                console.log(result);
                
                  
                
            });
            res.redirect('/login');

        }
        else{
            res.redirect('/signup')
        }

    });
   
    //req.flash('username', req.body.username)
    
    
   
});
// router.put("/book/:id", booking.update);
// router.get('/book/:id',booking.findone);
// router.delete('/book/:id',booking.deleteone);



router.post("/login",(req,res)=>{
    if (!req.body) {
        res.status(400).send({
          message: "Nothing send here"
        });
    }
    console.log(req.body);
    var username = req.body.name;
	var password = req.body.password;
	if (username && password) {
		sql.query('SELECT * FROM VALID WHERE name = ? AND password = ?', [username, password], function(error, results) {
			if (results.length > 0) {
                req.session.loggedin = "true";
                req.flash('username', req.body.name)
				res.redirect('/profile');
			} else {
				res.send('Incorrect Username and/or Password!');
			}			
			res.end();
		});
	} else {
		res.send('Please enter Username and Password!');
		res.end();
	}


})


router.post("/logout",(req,res)=>{
    req.session.loggedin = "false";
    console.log("hey");
    res.redirect('/')
})

router.get("/ajax",(req,res)=>{
    //console.log(req._parsedUrl.query);
    //res.send("hey");
    let rec=[[req._parsedUrl.query]]
    console.log(rec);
    if(req._parsedUrl.query==null){
        console.log("hey")
        res.send(" ");
    }
    else{
    sql.query("SELECT * FROM VALID WHERE name=?", [rec], function (err, result) {
        // if any error while executing above query, throw error
        if (err) throw err;
        // if there is no error, you have the result
        //console.log(result);
        if(result.length==0){
            res.send("Available");

        }
        else{
            res.send("Not Available");
        }
        
          
        
      });
    }
      
})



module.exports=router;