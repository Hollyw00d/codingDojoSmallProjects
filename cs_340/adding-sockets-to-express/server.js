// require express and path
var express = require("express");
var path = require("path");

// Create the express app
var app = express();

// Static content
app.use(express.static(path.join(__dirname + "/static")));

// Setting up ejs and view dirs
app.set("views", path.join(__dirname + "/views"));
app.set("view engine", "ejs");

// Root route to render the index.ejs view
app.get("/", function(req, res) {
    res.render("index");
});

// Express is listening port 8000
var server = app.listen(8000);

// We pass the server object
var io = require('socket.io').listen(server);

io.sockets.on("connection", function(socket) {
    // This line console logs to
    // Terminal
    console.log("I'm using sockets!");

    // This line console logs to
    // Terminal the "socket.id" value
    console.log(socket.id);

    // This line executes when the
    // socket.emit("button_clicked", ...)
    // function executes from the
    // client side and the "data"
    // must be shown on the client side
    // as an object
    socket.on("button_clicked", function(data) {

        // When the button click event is
        // emitted from the client to
        // the server this line
        // console logs to Terminal AND
        // the "response" property name
        // matches the property name in
        // the client
        console.log("Someone clicked a button!\nReason: " + data.response);

        // Also after the client side
        // socket.emit("button_clicked",...)
        // event executes the
        // socket.emit("server_response")
        // method executes and data from the
        // "response" property is passed to
        // the client
        socket.emit("server_response", {response: "Sockets are the best!"});


    });



});



