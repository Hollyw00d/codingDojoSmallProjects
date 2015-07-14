var express = require("express");

var app = express();

var bodyParser = require("body-parser");
app.use(bodyParser.urlencoded());

var session = require("express-session");
app.use(session({secret: "codingdojorocks"}));

// Use express to display static files in a
// "static" directory
app.use(express.static(__dirname + "/static"));

// Use express to display files that are server-side
// dynamic in a "views" directory
app.set("views", __dirname + "/views");

// Set the view engine so that express knows we are using ejs
app.set("view engine", "ejs");


app.get("/", function(req, res) {
    res.render("index", {title: "my express project"});
});


// Display users in a "users" route
app.post("/users", function(req, res) {
    req.session.name = req.body.name;
    console.log("Name field: ", req.session.name);

    console.log("POST DATA \n\n", req.body);


    res.redirect("/");
});

app.get("/users/:id", function(req, res) {
    console.log("The user id requested is:", req.params.id);

    res.send("You requested the user with id: " + req.params.id);
});

app.listen(8000, function() {
    console.log("Listening on port 8000");
});