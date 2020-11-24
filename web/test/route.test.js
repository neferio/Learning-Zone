const app = require('../src/utils');
const supertest = require('supertest');
const request = supertest(app);
const mysql = require('mysql');


beforeAll(() => {
    //console.log(process.env)
    process.env.NODE_ENV = 'test'
    // console.log(process.env.NODE_ENV)
    // console.log(process.env.PORT)
    // const connection = mysql.createConnection({
    //     host: 'localhost',
    //     user: 'root',
    //     password: '',
    //     database: 'testDB',
    //     port: 3306
    // });

    // connection.connect(err => {
    //     if(err)
    //         throw err;
    //     console.log('Connected to test database...')
    // })
})

describe('Dummy Tests', () => {
    it('Dummy Test 1', async done => {
        expect(true).toBe(true)
        done();
    })

    it('Dummy Test 2', async done => {
        expect(1+2).toBe(3);
        done();
    })
})

describe('Testing database endpoints', () => {
    it('Get profile endpoint', async done => {
        const res = await request.get("/profile");
        //console.log(res);
        expect(res.status).toBe(200);
        done();
    })

    it("Should save new user to database", async done => {
        const res = await request.post("/signup").send({
          username: "testusername",
          email: "test@gmail.com",
          password: "test1234"  
        });
        done();
      });

      it("Should not save duplicate user to database", async done => {
        const res = await request.post("/signup").send({
          username: "pooja",
          email: "poojapant@gmail.com",
          password: "test"  
        });
        expect(res.status).toBe(302);
        done();
      }); 

      it("Should handle empty fields", async done => {
        const res = await request.post("/signup").send({
            username: "",
            email: "",
            password: ""  
          });
          expect(res.status).toBe(302);
          done();
      })

      it("Should login an existing user", async done => {
        const res = await request.post("/login").send({
            name: "pooja",
            password: "pooja"  
          });
          //console.log(res)
          expect(res.error).toBe(false);
          expect(res.redirect).toBe(true);
          expect(res.header.location).toBe('/profile')
          done();
      })

      it("Should not login with correct username and incorrect password", async done => {
        const res = await request.post("/login").send({
            name: "pooja",
            password: "pooja1234"  
          }); 
          //console.log(res)
          expect(res.ok).toBe(false);
          expect(res.redirect).toBe(true);
          expect(res.header.location).toBe('/login?valid=0');
          done();
      })

      it("Should not login with incorrect username and correct password", async done => {
        const res = await request.post("/login").send({
            name: "pooja1234",
            password: "pooja"  
          }); 
          //console.log(res)
          expect(res.ok).toBe(false);
          expect(res.redirect).toBe(true);
          expect(res.header.location).toBe('/login?valid=0');
          done();
      })

      it("Should logout user", async done => {
          const res = await request.post("/logout").send({});
          expect(res.redirect).toBe(true);
          expect(res.header.location).toBe('/');
          done();
      })

      it("Should update priorities", async done => {
          const res = await request.post("/priority").send({
              topic: ['Android', 'Web-App']
          });
          //console.log(res);
          expect(res.affectedRows === 0).toBeFalsy();
          expect(res.redirect).toBe(true);
          expect(res.header.location).toBe('/profile');
          done();
      })

      it("Should have two priorities selected", async done => {
        const res = await request.post("/priority").send({
            topic: ['Android']
        });
        //console.log(res);
        expect(res.status).toBe(302);
        expect(res.redirect).toBe(true);
        expect(res.header.location).toBe('/profile?search=0');
        done();
      })

      it("Get enrolled courses", async done => {
          const res = await request.get("/enrol");
          expect(res.status).toBe(200);
          done();
      })

      
})

