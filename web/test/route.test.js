const app = require('../src/utils');
const supertest = require('supertest');
const request = supertest(app);
const mysql = require('mysql');


beforeAll(() => {
    process.env.NODE_ENV = 'test'
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

describe('Testing of endpoints', () => {
    it('Get profile endpoint', async done => {
        const res = await request.get("/profile");
        expect(res.status).toBe(200);
        done();
    })

    it("Should save new user to database", async done => {
        const res = await request.post("/signup").send({
          username: "testusername",
          email: "test@gmail.com",
          password: "test1234"  
        });
        expect(res.redirect).toBeTruthy();
        expect(res.header.location).toBe("/signup")
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

      it("Should show if username is available while signup", async done => {
        let res = await request.get("/ajax").send({
          username: "test" 
        });
        expect(res.status).toBe(200);

        res = await request.get("/ajax").send({
          username: "test1234" 
        });
        expect(res.ok).toBeTruthy()
        done();
      })

      it("Should login an existing user", async done => {
        const res = await request.post("/login").send({
            name: "pooja",
            password: "pooja"  
          });
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
          expect(res.affectedRows === 0).toBeFalsy();
          expect(res.redirect).toBe(true);
          expect(res.header.location).toBe('/profile');
          done();
      })

      it("Should have two priorities selected", async done => {
        const res = await request.post("/priority").send({
            topic: ['Android']
        });
        expect(res.status).toBe(302);
        expect(res.redirect).toBe(true);
        expect(res.header.location).toBe('/profile?search=0');
        done();
      })  
      
      it("Should be able to enrol to a new course", async done => {
        const res = await request.get("/enrol-check").send({
            query: {
              course: "fire-DL"
            }
        });
        expect(res.status).toBe(200);
        done();
      }) 
      

      it("Get enrolled courses", async done => {
          const res = await request.get("/enrol");
          expect(res.status).toBe(200);
          done();
      })

      it("Get coursebook", async done => {
        const res = await request.get("/coursebook");
        expect(res.status).toBe(200);
        done();
    })
      
    it("Get course catalog", async done => {
      const res = await request.get("/coursebook");
      expect(res.status).toBe(200);
      done();
  })

  it("Fetch course data from course name", async done => {
    const cname1 = "RNN"
    const cname2 = "finance-core"
    let res = await request.get(`/coursebook/${cname1}`);
    expect(res.status).toBe(200);

    res = await request.get(`/coursebook/${cname2}`);
    expect(res.status).toBe(200);
    done();
})

it("Should be able to mark a course as completed", async done => {
  const res = await request.get("/done").send({
    query: {
      course: "fire-DL"
    }
});
  expect(res.status).toBe(200);
  done();
})

it("Fetch completed courses of a user", async done => {
  const res = await request.get("/completed");
  expect(res.status).toBe(200);
  done();
})

})


