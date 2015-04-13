var express = require('express');
var router = require('./routers/index');
var server = express();

server.get('/', function (req, res) {
    res.end('Hello world!!!');
});

server.use('/api', router);
module.exports = server;