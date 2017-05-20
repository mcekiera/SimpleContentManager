(function () {

    function insertContent() {
        var data = {
            action: 'INSERT',
            name: $("#cms-sec-name").val(),
            title: $("#cms-sec-title").val(),
            domid: $("#cms-sec-domid").val(),
            menu: $("#cms-sec-menu").val(),
            content: $("#cms-sec-content").val()
        };

        request('content','POST', data, location.reload)
    }

    function clearContent() {
        $("#cms-sec-name").val('');
        $("#cms-sec-title").val('');
        $("#cms-sec-domid").val('');
        $("#cms-sec-menu").val('');
        $("#cms-sec-content").val('');
    }

    function updateContent(id) {
        var data = {
            action: 'UPDATE',
            id: id,
            name: $("#cms-sec-name-" + id).val(),
            title: $("#cms-sec-title-" + id).val(),
            domid: $("#cms-sec-domid-" + id).val(),
            menu: $("#cms-sec-menu-" + id).val(),
            content: $("#cms-sec-content-" + id).val()
        };

        request('content','POST', data, location.reload)
    }

    function deleteContent(id) {
        var data = {
            action: 'DELETE',
            id: parseInt(id,10)
        };

        request('content','POST', data)
    }

    function insertImg() {
        var data = {
            action: 'INSERT',
            alt: $("#cms-img-desc").val(),
            path: $("#cms-img-path").val(),
            file: $("#cms-img-file").val(),
            ext: $("#cms-img-ext").val()
        };

        request('images','POST', data, location.reload)
    }

    function clearImg() {
        $("#cms-img-desc").val('');
        $("#cms-img-path").val('');
        $("#cms-img-file").val('');
        $("#cms-img-ext").val('');
    }

    function updateImg(id) {
        var data = {
            action: 'UPDATE',
            id: id,
            alt: $("#cms-img-desc-" + id).val(),
            path: $("#cms-img-path-" + id).val(),
            file: $("#cms-img-file-" + id).val(),
            ext: $("#cms-img-ext-" + id).val()
        };

        request('images','POST', data, location.reload)
    }

    function deleteImg(id) {
        var data = {
            action: 'DELETE',
            id: parseInt(id,10)
        };

        request('images','POST', data)
    }

    function insertArticle() {
        var data = {
            action: 'INSERT',
            timestamp: $("#cms-blog-timestamp").val(),
            author: $("#cms-blog-author").val(),
            title: $("#cms-blog-title").val(),
            img: $("#cms-blog-img").val(),
            content: $("#cms-blog-content").val()
        };

        request('articles','POST', data, location.reload)
    }

    function clearArticle() {
        $("#cms-blog-timestamp").val('');
        $("#cms-blog-author").val('');
        $("#cms-blog-title").val('');
        $("#cms-blog-img").val('');
        $("#cms-blog-content").val('');
    }

    function updateArticle(id) {
        var data = {
            action: 'UPDATE',
            id: id,
            timestamp: $("#cms-blog-timestamp-" + id).val(),
            author: $("#cms-blog-author-" + id).val(),
            title: $("#cms-blog-title-" + id).val(),
            img: $("#cms-blog-img-" + id).val(),
            content: $("#cms-blog-content-" + id).val()
        };

        request('articles','POST', data, location.reload)
    }

    function deleteArticle(id) {
        var data = {
            action: 'DELETE',
            id: parseInt(id,10)
        };

        request('articles','POST', data)
    }

    function request(target, type, data) {
        console.log('id: ' + data.id);
        $.ajax({
            url: target + '.php',
            headers: {
                'Content-Type':'application/json'
            },
            method: type,
            dataType: 'json',
            data: JSON.stringify(data),
        });
        location.reload();
    }

    $(".cms-img-delete").click(function () {
        console.log("call id: " + $(this).data('id'));
        deleteImg($(this).data('id'));
    });

    $(".cms-img-update").click(function () {
        updateImg($(this).data('id'));
    });

    $("#cms-img-add").click(function () {
        insertImg();
    });

    $("#cms-img-clear").click(function () {
        clearImg()
    });

    $(".cms-sec-delete").click(function () {
        deleteContent($(this).data('id'));
    });

    $(".cms-sec-update").click(function () {
        updateContent($(this).data('id'));
    });

    $("#cms-sec-add").click(function () {
        insertContent();
    });

    $("#cms-sec-clear").click(function () {
        clearContent();
    });

    $(".cms-blog-delete").click(function () {
        deleteArticle($(this).data('id'));
    });

    $(".cms-blog-update").click(function () {
        updateArticle($(this).data('id'));
    });

    $("#cms-blog-add").click(function () {
        insertArticle();
    });

    $("#cms-blog-clear").click(function () {
        clearArticle();
    });




})();