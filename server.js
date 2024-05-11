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
    const sqlResults = await dao.showAllContentWithoutMemcached();
    const memResults = await dao.showAllContentWithMemcached();
    console.log(`SQL: ${sqlResults.data}\nMemcached: ${memResults.data}`);

    res.render('results', {
        sqlTime: sqlResults.timeTaken,
        memTime: memResults.timeTaken,
        sqlData: sqlResults.data,
        memData: memResults.data
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
