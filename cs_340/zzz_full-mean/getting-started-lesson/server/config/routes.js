// First at the top of your routes.js file you'll have to require the controller
var friends = require("./../controllers/friends.js");

// This is our routes.js file located in /config/routes.js
// This is where we will define all of our routing rules!
// We will have to require this in the server.js file (and pass it a
module.exports = function(app) {
    app.get("/friends", function(req, res) {
        // "friends" references the
        // "friends.js" controller and
        // "show" is a method of said
        // "friends.js" controller
        friends.show(req, res);
    });
};