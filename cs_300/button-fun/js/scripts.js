(function() {

    function toggleRedBackground() {
        $(this).toggleClass("red");
    }

    function hoverInGreenBackground() {
        $(this).css("background-color", "green");
    }

    function hoverOutGreenBackground() {
        $(this).removeAttr("style");
    }

$(function() {

    $("#btn-1").on("click", toggleRedBackground);

    $("#btn-2").hover(hoverInGreenBackground, hoverOutGreenBackground);

    $(document).keydown(function(e) {
        if(e.which == 13) {
            $("#btn-3").css("background-color", "green");
        }
    }).keyup(function(e) {
        if(e.which == 13) {
            $("#btn-3").removeAttr("style");
        }
    });



});

})();
