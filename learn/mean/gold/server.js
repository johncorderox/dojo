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

app.use(express.static( __dirname + '//dist' ));
mongoose.connect('mongodb://localhost/gold');

mongoose.Promise = global.Promise;

var GoldSchema = new mongoose.Schema({
  gold: {type: Number, required: true},
  color: {type: String, required: true}
 }, {timestamps: true})
mongoose.model('gold', GoldSchema); // We are setting this Schema in our Models as 'User'
var Gold = mongoose.model('gold') // We are retrieving this Schema from our Models, named 'User'


app.get('/post', function(req, res) {



});

// Setting our Server to Listen on Port: 8000
app.listen(8000, function() {
    console.log("listening on port 8000");
})
