/**
 * Created by mcekiera on 11.05.17.
 */
$(document).ready(function () {

    /**
     * Smoothly scroll page to element with given id.
     * @param id
     */
    function autoScroll(id) {
        var height = $(id).offset().top;
        $("html, body").animate({ scrollTop: "" + height }, 1000);
    };

    /**
     * Replace provided classes when given element is scrolled over, in any direction.
     * @param element observed for scroll over situation
     * @param stClass first class to replace
     * @param ndClass second class to replace
     */
    function changeClassOnScrollOver(element, stClass, ndClass) {
        var position = $(window).scrollTop();

        if(position >= element.height() && element.hasClass(stClass)) {
            element.removeClass(stClass);
            element.addClass(ndClass);
        } else if(position < element.height() && element.hasClass(ndClass)) {
            element.addClass(stClass);
            element.removeClass(ndClass);
        }
    };

    /**
     * Execute AJAX GET request to given URL, and process retrieved data with passed function.
     * @param url for request
     * @param after function to execute after response
     */
    function randomRequest(url, after) {
        $.ajax({
            url: url,
            method: 'GET'
        }).then(function(data) {
            after(data);
        });
    }

    /**
     * Sends request and creates HTML markup for retrieved data, then appends it to #js-blog-container.
     * Imitates real website content loading by AJAX requests.
     * @param id fot jsonplaceholder API purposes
     */
    function publishArticle(id) {
        var url ='https://jsonplaceholder.typicode.com/photos/' + id;
        var publish = function(data) {
            var article = createArticle(data);
            article.css("opacity","0");
            article.appendTo($("#js-blog-container"));
            article.animate({opacity: "1"}, 1000);
        };
        randomRequest(url, publish);
    }

    /**

    /**
     * Auto scroll triggered in menu.
     */
    $('.menu__link').click(function (e) {
        e.preventDefault();
        autoScroll($(this).attr('href'));
    });

    /**
     * Menu collapsing on scroll.
     */
    $(window).scroll(function() {
        changeClassOnScrollOver($('#js-header'), 'header--extended', 'header--fixed');
    });

    /**
     * Auto scroll from hero button.
     */
    $('#js-hero-button').click(function () {
        autoScroll($(this).data('target'));
    });

});
