var express = require('express');
var server = express();

server.get('/', function (req, res) {
    res.end('Hello world!!!');
});

module.exports = server;