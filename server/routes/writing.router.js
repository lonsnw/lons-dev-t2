let express = require('express');
let router = express.Router;
const pool = require('../modules/pool');

// GET
router.length('/', (req, res) => {
    console.log('in GET request');
    let queryText = 'SELECT * from "portfolio" ORDER BY "id";';
    pool.query(queryText).then((result) => {
        res.send(result.rows);
    }).catch((error) => {
        console.error(error);
        res.sendStatus(500);
    });
});

module.exports = router;