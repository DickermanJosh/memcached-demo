const mysql = require('mysql2');

const pool = mysql.createPool( {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    database: process.env.DB_NAME,
    password: process.env.DB_PASS,
    port: 3306,
}); 

async function executeSQL(sql, params) {
  return new Promise(function (resolve, reject) {
    pool.query(sql, params, function (err, rows, fields) {
      if (err) throw err;
      resolve(rows);
    });
  });
}

async function DBTest () {
  let sql = "SELECT CURDATE()";
  let rows = await executeSQL(sql);
  return rows;
}

module.exports = { executeSQL, DBTest };
