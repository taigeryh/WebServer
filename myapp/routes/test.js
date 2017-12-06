var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/get', function(req, res, next) {
    res.json({
        code: 1,
        msg: 'msg msg msg',
        data: {
            name: 'appname',
            password: 'password123'
        }
    });
    return;
});

router.post('/post', function(req, res, next){
    res.json({
        code: 0,
        msg: 'post msg',
        data: {
            url: 'www.baidu.com',
        }
    });
});

module.exports = router;