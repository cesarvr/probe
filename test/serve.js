'use strict';

var express = require('express')

var http = require('http')

var app = express();

var probe = require('../probe')

app.use(probe());



var fibonacci = function(n) {
    return n < 2 ? n : fibonacci(n - 1) + fibonacci(n - 2);
};



app.get('/fast', function(req, res, next) {
    res.send('fast');
});

app.get('/fib', function(req, res, next) {

    var n = Math.floor(Math.random() * 40) + 1;

    res.send({
        fibonacci: {
            'compute:': fibonacci(n),
            'iteration': n
        }
    });

});


app.get('/slow', function(req, res, next) {

    var _time = Math.floor(Math.random() * 1000) + 1;

    setTimeout(() => {
        res.send({
            slow: {
                'time:': _time
            }
        });
    }, _time)

});

var httpServer = http.createServer(app);

httpServer.listen(8080, function() {
    console.log('listening in ', 8080)
});
