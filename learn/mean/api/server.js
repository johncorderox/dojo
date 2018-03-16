// Require the Express Module
var express = require('express');
// Create an Express App
var app = express();
var mongoose = require('mongoose');
// Require body-parser (to receive post data from clients)
var bodyParser = require('body-parser');
// Integrate body-parser with our App
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
// Require path
var path = require('path');
// Setting our Static Folder Directory
app.use(express.static(path.join(__dirname, './static')));
// Setting our Views Folder Directory
app.set('views', path.join(__dirname, './views'));
// Setting our View Engine set to EJS
app.set('view engine', 'ejs');


//connect to mongo db


mongoose.connect('mongodb://localhost/api');

mongoose.Promise = global.Promise;

var BunnySchema = new mongoose.Schema({
  name: {type: String, required: true}
 }, {timestamps: true})
mongoose.model('api', BunnySchema); // We are setting this Schema in our Models as 'User'
var Api = mongoose.model('api') // We are retrieving this Schema from our Models, named 'User'


app.get('/', function(req, res){
  Api.find({}, function(err, bunny) {

    if (err){

    } else {
      res.json(bunny);

    }

  });


});

app.get('/new/:name', function( req, res) {

  var bunny = new Api({name: req.params.name});
  bunny.save(function(err) {

  if (err) {

    console.log("Error in post rabbits");

  } else {
  console.log("Rabbit added to DB!");
  res.redirect('/');
  }
  })

})


app.get('/remove/:name', function(req, res) {

  Api.remove( {name: req.params.name}, function(err, result) {

    if (err) {

    } else {
      res.redirect('/');
    }
  })
});

app.get('/:name', function (req, res) {

  Api.find( {name: req.params.name}, function(err, result) {

      res.json(result)
  });
})






// Setting our Server to Listen on Port: 8000
app.listen(8000, function() {
    console.log("listening on port 8000");
})
