
var express    = require("express");
var path       = require("path");
var session    = require('express-session');
var bodyParser = require('body-parser');

var app        = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(session({secret: 'johncorderox'}));

app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');


app.get('/', function(req, res) {

 res.render("index");
})

app.listen(8000, function() {
 console.log("listening on port 8000");
});
