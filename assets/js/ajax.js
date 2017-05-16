$(document).ready(function () {
    var blog = "articles.php?";
    var gallery = "images.php?";

    /**
     * Read more action response
     */
    $("#js-blog-button").click(function () {
        var q = $(".blog-entry").length;
        addContent(blog, q, 3, processArticles);
    });

    /**
     * View more action response
     */
    $("#js-gallery-button").click(function () {
        var q = $(".gallery__img").length;
        addContent(gallery, q, 2, processImages);
    });

    function fetchData(url, index, quantity, callback) {
        return $.getJSON(url + "q=" + quantity + "&i=" + index, function (data) {
            callback(data);
        })
    }

    function addContent(url, index, quantity, callback) {
        fetchData(url, index, quantity, callback);
    }

    function processImages(data) {
        data.forEach(function (el) {
            if(typeof el === 'object') {
                addImage(el);
            } else {
                ifSourceIsEmptyHideButton(el, $('#js-gallery-button'));
            }
        });
    }

    function processArticles(data) {
        data.forEach(function (el) {
            if(typeof el === 'object') {
                addArticle(el);
            } else {
                ifSourceIsEmptyHideButton(el, $('#js-blog-button'));
            }
        });
    }

    function addImage(dataset) {
        var img = createImage(dataset);
        img.css("opacity","0");
        img.css("width","585px");
        img.css("height", "368px");
        img.addClass("img-responsive");
        img.addClass("gallery__img");
        img.addClass(" col-xs-6");
        img.addClass("col-xxs-12");
        img.appendTo($("#js-gallery-container"));
        img.animate({opacity: "1"}, 1000);
    }


    function addArticle(dataset) {
        var article = createArticle(dataset);
        article.css("opacity","0");
        article.appendTo($("#js-blog-container"));
        article.animate({opacity: "1"}, 1000);
    }

    function createArticle(data) {
        var entry = $("<div class='col-sm-4'></div>");
        var background = $("<div class='blog-entry'></div>");
        background.css("background-image", "url(" + data.img + ")");
        var date = $("<p class='blog-entry__date'><span>" + data.day + "</span>" + data.month + "</p>");
        var title = $("<p class='blog-entry__title'>" + data.title + "</p>");
        var stamp = $("<p class='blog-entry__stamp'>By " + data.author + " - " + data.counter + "</p>");

        background.append(date);
        background.append(title);
        background.append(stamp);

        entry.append(background);

        return entry;
    }

    function createImage(data) {
        return $("<img class='img-responsive col-xs-6 col-xxs-12' src='" + data.url + "' alt='" + data.alt + "'>");
    }

    /**
     * If there is no more data in source, the button calling ajax request is hidden.
     * @param bool, if there is more content
     * @param button, element calling ajax request
     */
    function ifSourceIsEmptyHideButton(bool, button) {
        if(!bool) {
            button.css("display","none");
        }
    }
});