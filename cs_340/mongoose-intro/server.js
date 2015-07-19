// require path
var path = require("path");

// require express and create express app
var express = require("express");
var app = express();

// Require body-parser since we need to handle
// poth data for adding a user
var bodyParser = require("body-parser");
app.use(bodyParser.urlencoded( {extended: true} ));

// Static content
app.use(express.static(path.join(__dirname + "/static")));

// Set up views folder and ejs
app.set("views", path.join(__dirname + "/views"));
app.set("view engine", "ejs");

// Require mongoose
var mongoose = require("mongoose");

// Connect to a MongoDB Database named
// "basic_mongoose"
mongoose.connect("mongodb://localhost/basic_mongoose");

var UserSchema = new mongoose.Schema({
    name: String,
    age: Number
});

var User = mongoose.model("User", UserSchema);

// Index route
app.get("/", function(req, res) {
    //User.find({}, function(err, users) {
    //    res.send(users);
    //});

    res.render("index");
});

// Route to add a user
app.post("/users", function(req, res) {
    console.log("POST DATA", req.body);

    // Create a new User with the name and age corresponding
    // to those from req.body
    var user = new User( {name: req.body.name, age: req.body.age} );

    // Try to save that new user to the database and if needed
    // run a callback with an error from the operation
    user.save(function(err) {
        if(err) {
            console.log("Something went wrong");
        }
        else {
            console.log("Successfully added a user");
            res.redirect("/");
        }
    });

});

// Listen on port 8000
app.listen(8000, function() {
    console.log("Listening on port 8000");
});