#!/bin/bash 

#new node process
node --perf-basic-prof test/serve.js &

sleep 4

echo "testing...."

for ((i=1;i<=10000;i++)); do

#echo "\n"
#curl "http://localhost:8080/slow" -H "Pragma: no-cache" -H "Accept-Encoding: gzip, deflate, sdch, br" -H "Accept-Language: en-US,en;q=0.8,es;q=0.6" -H "Upgrade-Insecure-Requests: 1" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" -H "Cache-Control: no-cache" -H "Cookie: mock_uuid=E1D2BDB93B6B494F912E90CD5C699ECC; _ga=GA1.1.1437560514.1444121988; token={%22__v%22:0%2C%22userId%22:%22BMUser03%22%2C%22name%22:%22Bmuser03%22%2C%22admin%22:true%2C%22sessionToken%22:%22FSSESSION=cf6fcd9f4f970a37dbaeb5188173fbd5c2ed6e825e420f0ed8392d4e04459e76ad74558dfa3c83b1%22%2C%22time%22:1448974545636%2C%22_id%22:%22565d98d1d7fc4221616b30b6%22}" -H "Connection: keep-alive" --compressed
#echo "\n"

echo "\n"
curl "http://localhost:8080/fib" -H "Pragma: no-cache" -H "Accept-Encoding: gzip, deflate, sdch, br" -H "Accept-Language: en-US,en;q=0.8,es;q=0.6" -H "Upgrade-Insecure-Requests: 1" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" -H "Cache-Control: no-cache" -H "Cookie: mock_uuid=E1D2BDB93B6B494F912E90CD5C699ECC; _ga=GA1.1.1437560514.1444121988; token={%22__v%22:0%2C%22userId%22:%22BMUser03%22%2C%22name%22:%22Bmuser03%22%2C%22admin%22:true%2C%22sessionToken%22:%22FSSESSION=cf6fcd9f4f970a37dbaeb5188173fbd5c2ed6e825e420f0ed8392d4e04459e76ad74558dfa3c83b1%22%2C%22time%22:1448974545636%2C%22_id%22:%22565d98d1d7fc4221616b30b6%22}" -H "Connection: keep-alive" --compressed
echo "\n"



echo "\n"
curl "http://localhost:8080/fast" -H "Pragma: no-cache" -H "Accept-Encoding: gzip, deflate, sdch, br" -H "Accept-Language: en-US,en;q=0.8,es;q=0.6" -H "Upgrade-Insecure-Requests: 1" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" -H "Cache-Control: no-cache" -H "Cookie: mock_uuid=E1D2BDB93B6B494F912E90CD5C699ECC; _ga=GA1.1.1437560514.1444121988; token={%22__v%22:0%2C%22userId%22:%22BMUser03%22%2C%22name%22:%22Bmuser03%22%2C%22admin%22:true%2C%22sessionToken%22:%22FSSESSION=cf6fcd9f4f970a37dbaeb5188173fbd5c2ed6e825e420f0ed8392d4e04459e76ad74558dfa3c83b1%22%2C%22time%22:1448974545636%2C%22_id%22:%22565d98d1d7fc4221616b30b6%22}" -H "Connection: keep-alive" --compressed
echo "\n"

done

#destroy the server
echo "\n killing node process"
pgrep node | xargs sudo kill
