'use strict';

var express = require('express')
var http = require('http')

var app = express();

var probe = require('../probe')
app.use(probe());

app.get('/fast', function(req, res, next){
  res.send('fast');
});

app.get('/slow', function(req, res, next){
  var _time = Math.floor(Math.random() * 5000) + 1;
  setTimeout(()=>{
    res.send( 'sloooowww ' + _time );
  },_time)
});

var httpServer = http.createServer(app);

httpServer.listen(8080, function() {
    console.log('listening in ', 8080)
});
