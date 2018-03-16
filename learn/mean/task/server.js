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


mongoose.connect('mongodb://localhost/task');

mongoose.Promise = global.Promise;

var TaskSchema = new mongoose.Schema({
  title: {type: String, required: true},
  description: {type: String, required: true},
  completed: {type: Boolean, default: false }
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


app.get('/tasks/:id', function (req, res) {

  Task.findOne( {_id: req.params.id}, function( err, one) {

    if (err) {
      console.log(err);
    } else {
      res.json(one);
    }

  });
})


app.post('/tasks', function( req, res) {

Task.create(req.body, function( err, result) {

if (err) {
  console.log(err);
} else {
  console.log(result);
}
res.redirect('/');
});

})


app.put('/tasks/:id', function(req, res) {

  Task.findByIdAndUpdate({_id: req.params.id}, req.body, function(err, result) {


  if (err){
    console.log(err);
    res.redirect('/');

  } else {
    res.redirect('/');
  }
  });


});

app.delete('/tasks/:id', function( req, res) {

  Task.remove( {_id: req.params.id}, function( err, result) {

    res.redirect('/');
  })
})






// Setting our Server to Listen on Port: 8000
app.listen(8000, function() {
    console.log("listening on port 8000");
})
