// require express and path
var express = require("express");
var path = require("path");



// Create the express app
var app = express();

// require http module and create a server variable to use later
var http = require("http");
var server = http.createServer(app);

// Static content
app.use(express.static(path.join(__dirname, "./static")));

// Setting up ejs and view dirs
app.set("views", path.join(__dirname, "./views"));
app.set("view engine", "ejs");

// Root route to render the index.ejs view
app.get("/", function(req, res) {
    res.render("index");
});

// Tell express app to listen on port 8000
app.listen(8000, function() {
   console.log("Listening on port 8000");
});

// We pass the server object
var io = require('socket.io').listen(server);

io.sockets.on("connection", function(socket) {

    console.log("I'm using sockets!");
    console.log(socket.id);

});