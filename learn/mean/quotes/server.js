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

mongoose.connect('mongodb://localhost/quotes');

mongoose.Promise = global.Promise;

var QuoteSchema = new mongoose.Schema({
  name: {type: String, required: true},
  quote: {type: String, required: true}
 }, {timestamps: true})
mongoose.model('quotes', QuoteSchema); // We are setting this Schema in our Models as 'User'
var Quote = mongoose.model('quotes') // We are retrieving this Schema from our Models, named 'User'


app.get('/', function(req, res) {

  res.render("index");

});

app.get('/quotes', function(req, res) {
  Quote.find({}, function(err, quotes) {

    if (err) {

      console.log("Could not find data in mongo DB");

    } else {

      res.render("quotes", {quotes:quotes});
      console.log("output complete...........");
      console.log(quotes);

    }
  })


});
// Add User Request
app.post('/submit', function(req, res) {
    console.log("POST DATA", req.body);
    // This is where we would add the user from req.body to the database.

     var quote = new Quote({name: req.body.name, quote: req.body.quote});
     quote.save(function(err) {
       // if there is an error console.log that something went wrong!
       if(err) {
          res.render('index', {errors: quote.errors})
       } else { // else console.log that we did well and then redirect to the root route
         console.log('successfully added a user!');
         res.redirect('/quotes');
       }
     })
   })
// Setting our Server to Listen on Port: 8000
app.listen(8000, function() {
    console.log("listening on port 8000");
})
