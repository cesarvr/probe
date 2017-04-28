'use strict';

let Probe = function(logger) {

    let _log = logger || console.info;

    let _probe = function(evt, url) {
        let start_timer = Date.now(); //process.hrtime();

        return (o) => {
          let end_timer = Date.now();
          _log('event: ', evt ,
                       'url: ', url ,
                       'execution ', (end_timer - start_timer), 'ms');
          }
    }

    return function(req, res, next) {
        res.on('finish', _probe('finish',req.url));
        res.on('close', _probe('close', req.url));

        req.on('connect', _probe('connect', req.url));
        req.on('abort', _probe('abort', req.url));
        req.on('response', _probe('response', req.url));

        next();
    }
}

module.exports = Probe;
