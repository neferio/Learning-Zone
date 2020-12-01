const mysql = require("mysql")
const db_Config = require("../config/db-config.js");

// Create a connection to database

const conn = mysql.createConnection({

  host: 'db',
  user: 'mysql',
  password: '1234',

  // host: 'localhost',
  // user: 'root',
  // password: '',
  database: db_Config.database,
  port:db_Config.port
});

// open the connection and establish
conn.connect(error => {
  if (error) throw error;
  console.log("Successfully connected to the system database.");
});

module.exports = conn;
