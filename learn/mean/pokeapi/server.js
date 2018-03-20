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

app.use(express.static( __dirname + '/poke-angular/dist' ));
mongoose.connect('mongodb://localhost/task');

mongoose.Promise = global.Promise;

var TaskSchema = new mongoose.Schema({
  title: {type: String, required: true},
  description: {type: String, required: true}
 }, {timestamps: true})
mongoose.model('task', TaskSchema); // We are setting this Schema in our Models as 'User'
var Task = mongoose.model('task') // We are retrieving this Schema from our Models, named 'User'



app.get('/tasks', function(req, res){
  Task.find({}, function(err, result) {

    if (err){

    } else {
      res.json(result);
    }

  });


});

app.post('/tasks', function(req, res) {

  var task = new Task({title: req.body.title, description: req.body.description});
  task.save(function(err) {

  if (err) {

    console.log("Error in post rabbits");

  } else {


  }
  })
});

// Setting our Server to Listen on Port: 8000
app.listen(8000, function() {
    console.log("listening on port 8000");
})
