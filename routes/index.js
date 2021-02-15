var express = require('express');
var router = express.Router();
var os = require('os');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', {
    name: os.hostname()
  });
});

module.exports = router;
