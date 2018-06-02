'use strict';
$(document).ready(function () {
    function _fix() {
        //Get window height and the wrapper height
        var height = $(window).height() - $("body > .header").height();
        $(".wrapper").css("min-height", height + "px");
        var content = $(".wrapper").height();
        //If the wrapper height is greater than the window
        if (content > height)
        //then set sidebar height to the wrapper
            $(".left-side, html, body").css("min-height", content + 1 + "px");
        else {
            //Otherwise, set the sidebar to the height of the window
            $(".left-side, html, body").css("min-height", height + 1 + "px");
        }
    }

    //Fire upon load clear
    _fix();
    //Fire when wrapper is resized
    $(".wrapper").resize(function () {
        _fix();
    });

    $('.left_slim').slimscroll({
        height: '100vh',
        size: '5px',
        opacity: 0.2
    });

        $(window).on('scroll', function () {
            if ($(this).scrollTop() > 50) {
                $('.rightsidebar-right-content').addClass('rightslider-p-t');
            } else {
                $('.rightsidebar-right-content').removeClass('rightslider-p-t');
            }

            if ($(this).scrollTop() > 50 && $(this).scrollTop() < 100) {
                $('.rightsidebar-right-content').addClass('rightslider-p-t-small');
            } else {
                $('.rightsidebar-right-content').removeClass('rightslider-p-t-small');
            }
        });
});