// First add the following two lines at the top of the friends controller so that we can access our model through var Friend
// need to require mongoose to be able to run mongoose.model()
var mongoose = require('mongoose');
var Friend = mongoose.model('Friend');


// this is our friends.js file located at /server/controllers/friends.js
// note the immediate function and the object that is returned
module.exports = (function() {
    return {
        show: function(req, res) {

            // Show friend documents from the
            // "FullMean" Mongo database
            Friend.find({}, function(err, results) {
                if(err) {
                    console.log("Mongo Database Show Friends Errors:", err);
                }
                else {
                    res.json(results);
                }

            });


        }
    }
})();