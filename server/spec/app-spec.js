var server = require('../src/server');
var request = require('supertest');

request(server)
    .get('/')
    .expect(200, 'Hello world!!!')
    .end(function(err, res){
        if (err) throw err;
    });