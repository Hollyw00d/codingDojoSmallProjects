// get http module
var http = require("http");

// get fs module to read and write content for response
var fs = require("fs");


// Create a server using http module
var server = http.createServer(function(request, response) {
    
    // See what URL the clients are requesting
    console.log("Client request URL: ", request.url);

    if(request.url === "/styles.css") {
        fs.readFile("./stylesheets/styles.css", "utf8", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/css"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url === "/cars") {
        fs.readFile("./views/cars.html", "utf8", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/html"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url === "/cats") {
        fs.readFile("./views/cats.html", "utf8", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/html"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url === "/cars/new") {
        fs.readFile("./views/cars_new.html", "utf8", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/html"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url === "/car1") {
        fs.readFile("./images/car1.jpg", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/jpg"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url === "/car2") {
        fs.readFile("./images/car2.jpg", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/jpg"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url === "/car3") {
        fs.readFile("./images/car3.jpg", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/jpg"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url === "/car4") {
        fs.readFile("./images/car4.jpg", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/jpg"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url === "/cat1") {
        fs.readFile("./images/cat1.jpg", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/jpg"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url === "/cat2") {
        fs.readFile("./images/cat2.jpg", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/jpg"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url === "/cat3") {
        fs.readFile("./images/cat3.jpg", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/jpg"});
            response.write(contents);
            response.end();
        });
    }
    else if(request.url === "/cat4") {
        fs.readFile("./images/cat4.jpg", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/jpg"});
            response.write(contents);
            response.end();
        });
    }
    else {
        response.writeHead(404);
        response.end("File not found!");
    }
});


// Tell your service which port to listen on
server.listen(7077);

console.log("Running in localhost at port 7077");