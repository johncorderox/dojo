// Require the Express Module
var express = require('express');
// Create an Express App
var app = express();
var mongoose = require('mongoose');
// Require body-parser (to receive post data from clients)
var bodyParser = require('body-parser');
// Integrate body-parser with our App
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

mongoose.connect('mongodb://localhost/bunny');

mongoose.Promise = global.Promise;

var BunnySchema = new mongoose.Schema({
  name: {type: String, required: true},
  color: {type: String, required: true}
 }, {timestamps: true})
mongoose.model('bunny', BunnySchema); // We are setting this Schema in our Models as 'User'
var Bunny = mongoose.model('bunny') // We are retrieving this Schema from our Models, named 'User'


app.get('/', function(req, res){
  Bunny.find({}, function(err, bunny) {

    if (err){
      res.render("index", {bunny: bunny});

      console.log("ERROR");
    } else {
res.json(bunny);

    }

  });


});

app.get('/new', function(req, res){


  res.render("new");
});

app.post('/rabbits', function (req, res){

var bunny = new Bunny({name: req.body.name, color: req.body.color});
bunny.save(function(err) {

if (err) {

  console.log("Error in post rabbits");

} else {
console.log("Rabbit added to DB!");
res.redirect('/');
}
})

});
app.get('/rabbits/edit/:id', function(req, res) {

  Bunny.findOne( {_id: req.params.id}, function( err, edit_bunny) {

    if (err) {
      console.log("Log finding bunny");
    } else {

      res.render("edit", {edit_bunny: edit_bunny});
    }
  });

})

app.post('/rabbits/:id', function(req, res) {

Bunny.findByIdAndUpdate({_id: req.params.id}, {name: req.body.name, color: req.body.color}, function(err, result) {


if (err){
  console.log(err);
  res.redirect('/');

} else {
  res.redirect('/');
}
});



});
app.get('/rabbits/:id', function(req, res) {

  Bunny.findOne( {_id: req.params.id}, function( err, one) {

    if (err) {
      console.log("Log finding bunny");
    } else {

      res.render("view", {one: one});
    }
  });

});

app.post('/rabbits/destroy/:id', function(req, res){

Bunny.remove( {_id: req.params.id}, function(err, result) {

  if (err) {
    console.log(err);
  } else {
    res.redirect('/');
  }
})

})
// Setting our Server to Listen on Port: 8000
app.listen(8000, function() {
    console.log("listening on port 8000");
})
