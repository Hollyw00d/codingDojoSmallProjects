// get http module
var http = require("http");

// get fs module to read and write content for response
var fs = require("fs");

// Create a server using http module
var server = http.createServer(function(request, response) {
    // See what URL the clients are requesting
    console.log("Client request URL: ", request.url);

    if(request.url === "/cars") {
        fs.readFile("./views/cars.html", "utf8", function(errors, contents) {
            response.writeHead(200, {"Content-Type": "text/html"});
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