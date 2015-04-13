var express = require('express');
var router = express.Router();

router.get('/tasks/', function(req, res) {
    res.json({task: 1});
});

module.exports = router;