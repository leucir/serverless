var request = require('request');

function main(params) {
   var lat = params.lat || '45.42';
   var long = params.long || '75.69';
   var url = 'https://16d968de-6d12-4513-ae91-27bba11068ec:C0atnZu67U@twcservice.mybluemix.net';
   var query = '/api/weather/v1/geocode/'+ lat +'/'+ long +'/observations.json?units=m&language=en-US';

   //append query to url
   url = url + query;

   return new Promise(function(resolve, reject) {
       request.get(url, function(error, response, body) {
           if (error) {
               reject(error);
           }
           else {
               var condition = JSON.parse(body).observation;
               var text = condition.wx_phrase;
               var temperature = condition.temp;
               var output = 'It is ' + temperature + ' degrees.' + text;
               resolve({msg: output});
           }
       });
   });
}
