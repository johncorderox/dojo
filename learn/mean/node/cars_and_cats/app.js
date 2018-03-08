// get the http module:
var http = require('http');
// fs module allows us to read and write content for responses!!
var fs = require('fs');
// creating a server using http module:
var server = http.createServer(function(request, response) {
  // see what URL the clients are requesting:
  console.log('client request URL: ', request.url);
  // this is how we do routing:
  if (request.url === '/cars') {
    fs.readFile('views/cars.html', 'utf8', function(errors, contents) {
      response.writeHead(200, {
        'Content-Type': 'text/html'
      });
      response.write(contents);
      response.end();
    });
  } else if (request.url === "/cats") {
    fs.readFile('cats.html', 'utf8', function(errors, contents) {
      response.writeHead(200, {
        'Content-type': 'text/html'
      });
      response.write(contents);
      response.end();
    });
}
    else if(request.url === '/images/mini.jpg'){
      // notice we won't include the utf8 encoding
      fs.readFile('./images/mini.jpg', function(errors, contents){
          response.writeHead(200, {'Content-type': 'image/jpg'});
          response.write(contents);
          response.end();
      })
    }

app.get('/post/:id', (req, res)=>{
  Post.find({_id: req.params.id}, (err, data)=>{
      if(err){
        console.log(err);
      }else{
        res.json(data);
      }
  })
})



  // request didn't match anything:
  else {
    response.end('File not found!!!');
  }
});
// tell your server which port to run on
server.listen(3000);
// print to terminal window
console.log("Running in localhost at port 3000");
