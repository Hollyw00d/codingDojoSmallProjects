var express = require("express");

var path = require("path");

var app = express();

app.use(express.static(path.join(__dirname + "/client")));

require("./config/routes.js")(app);


app.get("/", function(req, res) {
    res.render("index.html");
});

app.listen(8000, function() {
    console.log("Node.js running on 8000");
});