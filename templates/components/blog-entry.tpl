<div class="col-sm-4">
    <a href="blog.php?id={$entry['id']}&title={$entry['title']|lower|regex_replace:'/\s/':'-'}">
        <div class="blog-entry" style="background-image: url({$entry['img']})">
            <p class="blog-entry__date"><span>{$entry['day']}</span> {$entry['month']}</p>
            <p class="blog-entry__title">{$entry['title']}</p>
            <p class="blog-entry__stamp">By {$entry['author']} - {$entry['counter']}</p>
        </div>
    </a>
</div>