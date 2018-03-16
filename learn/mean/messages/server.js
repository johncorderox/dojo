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

mongoose.connect('mongodb://localhost/board');

mongoose.Promise = global.Promise;

var Schema = mongoose.Schema;

var MessagesSchema = new mongoose.Schema({
  name: {type: String, required: true},
  message: {type: String, required: true},
  comments: [ {type: Schema.Types.ObjectId, ref: 'Comment'} ]
 }, {timestamps: true})

 var CommentsSchema = new mongoose.Schema({
   name: {type: String, required: true},
   comment: {type: String, required: true},
   _message: {type: Schema.Types.ObjectId, ref: 'Message'}
  }, {timestamps: true})

mongoose.model('comments', CommentsSchema);
mongoose.model('messages', MessagesSchema);
// We are setting this Schema in our Models as 'User'
var Comments = mongoose.model('comments');
var Messages = mongoose.model('messages')
 // We are retrieving this Schema from our Models, named 'User'


app.get('/', function(req, res){

  Messages.find( {} ).populate('Comment').exec(function(err, result) {
    console.log(result);
    res.render("index", {result: result})
  });

});

app.post('/message', function(req, res) {

  Messages.create(req.body, function(err, result) {

    if (err) {
      console.log(err);
      res.redirect('/');
    }
    res.redirect('/');
  });

});

app.post('/message/:id', function(req, res) {

  Messages.findOne( {_id: req.params.id}, function(err, post) {

    var comment = new Comments(req.body);

    comment._message = post._id;

    comment.save(function(err) {

      post.comments.push(comment);
      post.save(function(err) {

        if (err) {

          console.log(err);
          res.redirect('/');
        } else {
          res.redirect('/');
        }
      });
    })
  });


});



// Setting our Server to Listen on Port: 8000
app.listen(8000, function() {
    console.log("listening on port 8000");
})
