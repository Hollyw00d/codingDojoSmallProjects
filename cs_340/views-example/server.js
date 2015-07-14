var express = require("express");

var app = express();

app.get("/", function(req, res) {
    res.send("Hello Express!");
});

// Use express to display static files in a
// "static" directory
app.use(express.static(__dirname + "/static"));

// Use express to display files that are server-side
// dynamic in a "views" directory
app.set("views", __dirname + "/views");

// Set the view engine so that express knows we are using ejs
app.set("view engine", "ejs");

// Display users in a "users" route
app.get("/users", function(req, res) {
    // Hard-coded user data
    var users_array = [
        {name: "Michael", email: "michael@codingdojo.com"},
        {name: "Jay", email: "jay@codingdojo.com"},
        {name: "Brendan", email: "brendan@codingdojo.com"},
        {name: "Andrew", email: "andrew@codingdojo.com"}
    ];
    res.render("users", {users: users_array});
});

app.listen(8000, function() {
    console.log("Listening on port 8000");
});