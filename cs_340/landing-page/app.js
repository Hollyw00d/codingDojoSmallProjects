// http module
var http = require("http");

// fs module allows us to read and write content for responses
var fs = require("fs");

// Creating a server using http module
var server = http.createServer(function(request, response) {
    // See what the URL the clients are requesting
    console.log("Client request URL: ", request.url);

    if(request.url == "/") {
        fs.readFile("./index.html", "utf8", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/html"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url == "/ninjas") {
        fs.readFile("./ninjas.html", "utf8", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/html"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url == "/dojos/new") {
        fs.readFile("./dojos.html", "utf8", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/html"});
            response.write(contents);
            response.end();
        });
    }

    // Request didn't match anything
    else {
        response.writeHead(404);
        response.end("File not found!");
    }
});

server.listen(6789);

console.log("Running in localhost at port 6789");