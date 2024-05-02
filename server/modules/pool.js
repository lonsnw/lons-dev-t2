const pg = require('pg');

const pool = new pg.Pool({
    database: 'lons',
    host: 'localhost',
    port: 5423
});