var server = require('../src/server');
var request = require('supertest');

describe('ToDo API', function () {
    it('Should say hello', function (done) {
        request(server)
            .get('/')
            .expect(200, 'Hello world!!!')
            .end(done);
    });
});