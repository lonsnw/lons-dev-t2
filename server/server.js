const express = require('express');
const app = express();
const port = process.env.PORT || 5001;

/** ---------- MIDDLEWARE ---------- **/
app.use(express.json());
app.use(express.static('build'));

/** ---------- EXPRESS ROUTES ---------- **/
const writingRouter = require('./routes/writing.router.js');
app.use('/api/writing', writingRouter);

const codeRouter = require('./routes/code.router.js');
app.use('/api/code', codeRouter);

/** ---------- START SERVER ---------- **/
app.listen(port, function () {
    console.log('Listening on port: ', port);
});