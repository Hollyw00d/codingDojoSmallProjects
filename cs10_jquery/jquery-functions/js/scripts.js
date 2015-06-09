$(function() {

    $("#add-class").on("click", function() {
        $(this).next().addClass("red");
    });


    $("#after").on("click", function() {
        $(this).next().after("<p>NEW PARAGRAPH!</p>");
    });

    $("#append").on("click", function() {
        $(this).next().append("<br /><a href='#'>Appended link!</a>");
    });

    $("#attr").on("click", function() {
        $(this).next().attr("class", "after-using-function");
    });

    $("#before").on("click", function() {
        $(this).next().before("<p>Added paragraph before!!!</p>");
    });

    $("#html").on("click", function() {
        $(this).next().html("<em>em tag added!!!</em>");

    });

    $("#text").on("click", function() {
        $(this).next().text("New text here!");
    });


    $("#toggle").on("click", function() {
        $(this).next().toggle();
    });

    $("#hide").on("click", function() {
        $(this).next().hide();
    });

    $("#show").on("click", function() {
        $(this).next().find("a").show();
    });

    $("#slide-down").on("click", function() {
        $(this).next().next().slideDown();
    });

    $("#slide-toggle").on("click", function() {
        $(this).next().next().slideToggle();
    });

    $("#slide-up").on("click", function() {
        $(this).next().slideUp();
    });

    $("#fade-out").on("click", function() {
        $(this).next().fadeOut();
    });

    $("#fade-in").on("click", function() {
        $(this).next().next().fadeIn();
    });


    $("#trigger").focus(function() {
        alert("Input event triggered!");
    });


    $("#click").on("click", function() {
        alert("On click event triggered!");
    });


});