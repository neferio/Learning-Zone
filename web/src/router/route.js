//router
const express = require('express')
const router=new express.Router()
var bodyParser = require('body-parser');
router.use(bodyParser.json());
router.use(bodyParser.urlencoded({ extended: true })); 
var flash = require('connect-flash');
router.use(flash());
var session = require('express-session');





router.use(session({ cookie: { maxAge: 60000000 }, 
    secret: 'woot',
    resave: true, 
    "saveUninitialized": true,
  }));
// const student = require("../model/command");

const sql = require("../db/database");

//end points
router.get('/profile',(req,res)=>{
    //console.log("hyq1")
    if(req.query.search==0){
        //console.log("hyq2");
        let nameq=req.session.name;
        let emailq=req.session.email;
        
        res.render('profile',{
            name:nameq,
            email:emailq,
            error1:"Error select 2 Priorites please",
            

        })
    }
    else{
        if (req.session.loggedin && req.session.loggedin == "true") {
            let nameq=req.session.name;
            let emailq=req.session.email;
            
            res.render('profile',{
                name:nameq,
                email:emailq,
                error1:""
    
            })
        } else {
            res.render('notfound');
        }
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
                //console.log(result);
                
                  
                
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
                req.session.name=username;
                req.session.email=results[0].email;
                req.flash('username', req.body.name)
                // req.flash('email',res)
                req.flash('email', results[0].email)
               
				res.redirect('/profile');
			} else {
                res.redirect('/login?valid=0')
				//res.send('Incorrect Username and/or Password!');
			}			
			res.end();
		});
	} else {
        res.redirect('/login?valid=1')
		//res.send('Please enter Username and Password!');
		//res.end();
	}


})


router.post("/logout",(req,res)=>{
    req.session.loggedin = "false";
    console.log(req.flash('email'))
    console.log("hey");
    res.redirect('/')
})

router.get("/ajax",(req,res)=>{
    //console.log(req._parsedUrl.query);
    //res.send("hey");
    let rec=[[req._parsedUrl.query]]
    //console.log(rec);
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

router.post("/priority",(req,res)=>{
    //console.log(req);
    //let userParams = getUserParams(req.body);
    console.log(req.body.topic)
    if(req.body.topic.length==2){
       // console.log("heyy")

        let pr1=req.body.topic[0];
        let pr2=req.body.topic[1];
        var sql11="UPDATE VALID SET pone ='"+ pr1+ "', "+ "ptwo = '"+pr2+"' WHERE name = '"+req.session.name+"'"
        
        sql.query(sql11, function (err, result) {
            if (err) throw err;
            console.log(result.affectedRows + " record(s) updated");
        });




        res.redirect('/profile');
        
    }
    else{
        res.redirect('/profile?search=0');
    }
    
})



router.get("/recommend",(req,res)=>{
    console.log(req.session.name)

    let sql11="SELECT * FROM VALID WHERE name='"+req.session.name+"'"
    let arr=new Array;
    sql.query(sql11, function (err, result) {
        if (err) throw err;
        // console.log(result[0]);
        // arr.push(result[0].name)
        // arr.push(result[0].pone)
        let tag1=result[0].pone;
        let tag2=result[0].ptwo;

        let sql22="SELECT * FROM `Course-tags` WHERE tag IN ('"+tag1+"','"+tag2+"') AND Course NOT IN (SELECT course FROM `course-student` WHERE student='"+req.session.name+"') LIMIT 3"
        sql.query(sql22, function (err, result2) {
            if (err) throw err;
            // arr.push(result2[0])
            // var result2 = JSON.stringify(result2);
            // console.log(result2);

            result2.forEach(element => {
                arr.push(element);

            });
            console.log(arr);
            arr = JSON.stringify(arr);
            res.send(arr);
        })




       

    });
})




router.get("/enrol",(req,res)=>{
        console.log(req.session.name)
        let arr2=new Array;
        let sql22="SELECT * FROM `course-student` WHERE student='"+req.session.name+"' AND status=0";
        sql.query(sql22, function (err, result2) {
            if (err) throw err;
            // arr.push(result2[0])
            // var result2 = JSON.stringify(result2);
            // console.log(result2);

            result2.forEach(element => {
                arr2.push(element);

            });
            //console.log(arr2);
            arr2 = JSON.stringify(arr2);
            res.send(arr2);
        })




       

    // });
})



router.get("/coursebook",(req,res)=>{
    res.render('coursebook')
})


router.get("/course-catalog",(req,res)=>{
        let arr3=new Array;
        let sql22="SELECT * FROM `course-tags` "
        sql.query(sql22, function (err, result2) {
            if (err) throw err;
            // arr.push(result2[0])
            // var result2 = JSON.stringify(result2);
            // console.log(result2);

            result2.forEach(element => {
                arr3.push(element);

            });
            //console.log(arr3);
            arr3 = JSON.stringify(arr3);
            res.send(arr3);
        })


})



router.get("/coursebook/:cname",(req,res)=>{
    console.log(req.session.name)
    let cname11=req.params.cname;
    let sql22="SELECT * FROM `course-data` WHERE course='"+req.params.cname+"'"
        sql.query(sql22, function (err, result2) {
            if (err) 
                throw err;
                res.render('course',{
                cname:result2[0].course,
                data:result2[0].data,
                author:result2[0].author
            })
        })

   // res.send("hey");
})




router.get("/enrol-check",(req,res)=>{
   
    console.log(req.query.course);
    console.log(req.session.name);

     let arr3=new Array;
    let sql22="SELECT * FROM `course-student` WHERE student='"+req.session.name+"' AND course='"+req.query.course+"'"
    sql.query(sql22, function (err, result2) {
        if (err) throw err;
        
        if(result2.length==0){
            res.send("-1");
        }
        else{
        xy=""+result2[0].status
        //console.log(xy)
        res.send(xy)
        }
    })





})



router.get("/enrol-now",(req,res)=>{

    let sql12="SELECT imgname FROM `course-tags` WHERE course='"+req.query.course+"'"
    sql.query(sql12, function (err, result1) {
        if (err) throw err;
        
        ;
        
       let xy=result1[0].imgname;

       var sql22 = "INSERT INTO `course-student` (course, student,status,imgname) VALUES ('"+req.query.course+"','"+   req.session.name +"',0,'"+xy+"')"
    
        sql.query(sql22, function (err, result2) {
            if (err) throw err;
            
            ;
            
        // xy=""+result2[0].status
           // console.log(result2)
            res.send("yes")
        })
    })



    
})

module.exports=router;