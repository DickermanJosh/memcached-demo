require('dotenv').config();
const express = require('express');
const app = express();
const PORT = 3000;

app.set("view engine", "ejs");
app.use(express.static("public"));
app.use(express.json());
app.use(express.urlencoded({ extended: true })); // Form parsing

const { DBTest } = require('./db');
const DAO = require('./DAO');
const dao = new DAO();

app.set("view engine", "ejs");
app.use(express.static("public"));
app.use(express.urlencoded({extended: true}));

//routes
app.get('/', (req, res) => {
    res.render('home');
});

app.post('/startTest', async (req, res) => {
    let sqlTotalTime = 0;
    let sqlTotalRows = 0;

    let memTotalTime = 0;
    let memTotalRows = 0;

    const iterations = 1000;

    // Make 100 seperate calls with multiple queries to the DB without memcached
    for (let i = 0; i < iterations; i++) {
        const sqlResults = await dao.showAllContentWithoutMemcached();
        sqlTotalTime += sqlResults.timeTaken;
        sqlTotalRows += sqlResults.data.length;
    }

    // Make 100 seperate calls with multiple queries to the DB with memcached
    for (let i = 0; i < iterations; i++) {
        const memResults = await dao.showAllContentWithMemcached();
        memTotalTime += memResults.timeTaken;
        memTotalRows += memResults.data.length;
    }

    const uniqueSQLRows = sqlTotalRows / iterations;
    const uniqueMemRows = memTotalRows / iterations;

    await dao.clearCache();
    res.render('results', {
        sqlTime: sqlTotalTime,
        sqlRows: sqlTotalRows,
        sqlUnique: uniqueSQLRows,
        memTime: memTotalTime,
        memRows: memTotalRows,
        memUnique: uniqueMemRows,
        runs: iterations * 5,
    });
});

app.get("/dbTest", async function(req, res){
    const result = await DBTest();
    res.send(result);
});


//start server
app.listen(PORT, () => {
    console.log("Expresss server running...")
});
