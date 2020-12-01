const mysql = require("mysql")
const db_Config = require("../config/db-config.js");

// Create a connection to database

const conn = mysql.createConnection({
<<<<<<< HEAD
  // host: 'db',
=======
  host: 'db',
  user: 'mysql',
  password: '1234',
  // host: 'localhost',
>>>>>>> 6f900428050df59af3b09514cfdc522cf3197661
  // user: 'root',
  // password: '1234',
  host: 'localhost',
  user: 'root',
  password: '',
  database: db_Config.database,
  port:db_Config.port
});

// open the connection and establish
conn.connect(error => {
  if (error) throw error;
  console.log("Successfully connected to the system database.");
});

module.exports = conn;