// require express
var express = require("express");
// path module -- try to figure out where and why we use this
var path = require("path");
var session = require('express-session');
// create the express app
var app = express();
var bodyParser = require('body-parser');

// use it!
app.use(bodyParser.urlencoded({ extended: true }));
// static content
app.use(express.static(path.join(__dirname, "./static")));
app.use(session({secret: 'johncorderox'}));
// setting up ejs and our views folder
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');
// root route to render the index.ejs view
app.get('/', function(req, res) {

  if (req.session.count){

      req.session.count += 1;
  } else {
    req.session.count = 1;
  }

 res.render("index", {count: req.session.count});
})

// post route for adding a user
app.post('/two', function(req, res) {
 console.log("POST DATA", req.body);
 req.session.count += 1;
 // This is where we would add the user to the database
 // Then redirect to the root route
 res.redirect('/');
})

app.post('/reset', function(req, res) {
 console.log("POST DATA", req.body);
 req.session.destroy();
 // This is where we would add the user to the database
 // Then redirect to the root route
 res.redirect('/');
})
// tell the express app to listen on port 8000
app.listen(8000, function() {
 console.log("listening on port 8000");
});
