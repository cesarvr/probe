### Probe

Is a simple [Express](https://www.npmjs.com/package/express) middleware to measure latency in your endpoints.

#### Usage

```js
//Make sure is first in the middleware stack. 
if(process.env.DEBUG){
  var probe = require('probe-mon');
  app.use(probe());
}
```

#### Data

This middleware return the following data:
  - **Event**: Is the IO event for now just trigger when the event finish is triggered.
  - **URL**: The endpoint URL, that was hit.
  - **Execution**: The time elapse between the arriving of the request to response.



In this output example I just have two endpoint one called /slow with a random delay, the delay at server side is returned to test the accuracy of the measurement and other endpoint called /fast that just respond immediately.

```sh
sloooowww 948     #server returned the delay random number 948ms.

event:  finish url:  /slow execution  964 ms
#this line is from the probe plugin
#execution measurement ≈16m deviation.

fast
event:  finish url:  /fast execution  2 ms

sloooowww 4697
event:  finish url:  /slow execution  4699 ms

fast
event:  finish url:  /fast execution  0 ms

sloooowww 2702
event:  finish url:  /slow execution  2705 ms

fast
event:  finish url:  /fast execution  0 ms

sloooowww 4701
event:  finish url:  /slow execution  4704 ms

fast
event:  finish url:  /fast execution  0 ms

sloooowww 2968
event:  finish url:  /slow execution  2972 ms

event:  finish url:  /fast execution  1 ms
fast
```


## LICENSE

This software is licensed under the MIT License.

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the
following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
USE OR OTHER DEALINGS IN THE SOFTWARE.
