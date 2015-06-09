/* Disappearing Ninja */
$(function() {

    $("img").on("click", function() {
       $(this).css("visibility", "hidden");
    });

    $("button").on("click", function() {
        $("img").removeAttr("style");
    });

});