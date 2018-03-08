var express = require("express");
var app = express();
// require body-parser
var bodyParser = require('body-parser');

var session = require('express-session');
// use it!
app.use(bodyParser.urlencoded({extended: true}));

app.use(session({secret: 'johncorderox'}));

app.get('/', function(request, response) {

  response.send("<h1>Hello Express</h1>");
})

// This sets the location where express will look for the ejs views
app.set('views', __dirname + '/views');
// Now lets set the view engine itself so that express knows that we are using ejs as opposed to another templating engine like jade
app.set('view engine', 'ejs');

app.get("/users", function (request, response){
    // hard-coded user data
    var users_array = [
        {name: "Michael", email: "michael@codingdojo.com"},
        {name: "Jay", email: "jay@codingdojo.com"},
        {name: "Brendan", email: "brendan@codingdojo.com"},
        {name: "Andrew", email: "andrew@codingdojo.com"}
    ];
    response.render('users', );
})

app.get("/users/:id", function(req, res) {

  console.log("The user id requested is: ", req.params.id);
  res.send("You requested the user with id: "+req.params.id);

});

app.post('/users', function(req, res) {

  console.log("POST DATA \n\n ", req.body);
  req.session.name = req.body.name;
  console.log("Session =>" +req.session.name);
  res.redirect('/users');

});
app.listen(8000, function() {

  console.log("listening on port 8000");

});
