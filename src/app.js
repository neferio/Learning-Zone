const express=require('express')
const path=require('path')

const port=process.env.PORT || 8000

const htmlpath=path.join(__dirname,'../public')



//Express Server
const app=express()

const bodyParser = require("body-parser");

app.use(bodyParser.urlencoded({ extended: false }));

app.use(express.static(htmlpath))
app.set("view engine", "ejs");

app.get('/',(req,res)=>{
    res.render("index");
})

app.get('/signup',(req,res)=>{
    res.render("signup");
})










app.listen(port,()=>{
    console.log('server is running on',port)
})
