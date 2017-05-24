<div class="cms-blog">
    <table class="table table-striped table-hover table-responsive table-condensed">
        <thead>
            <tr>
                <th>ID</th>
                <th>Timestamp</th>
                <th>Author</th>
                <th>Title</th>
                <th>Content</th>
                <th>Image path</th>
                <th>Picture</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        {foreach $blog as $article}
            <tr>
                <td><a href="/cahee/blog.php?id={$article['id']}">{$article['id']}</a></td>
                <td><input id="cms-blog-timestamp-{$article['id']}" title="Timestamp" type="datetime" value="{$article['timestamp']}"></td>
                <td><input id="cms-blog-author-{$article['id']}" title="Author" type="text" value="{$article['author']}"></td>
                <td><input id="cms-blog-title-{$article['id']}" title="Title" type="text" value="{$article['title']}"></td>
                <td><textarea id="cms-blog-content-{$article['id']}" title="Article">{$article['content']}</textarea></td>
                <td><input id="cms-blog-img-{$article['id']}" title="Image" type="text" value="{$article['img']}"></td>
                <td><img class="cms-img__image" src="{$article['img']}"></td>
                <td><button class="cms-blog-update" type="submit" data-id='{$article['id']}'>Update</button> </td>
                <td><button class="cms-blog-delete" type="submit" data-id='{$article['id']}'>Delete</button> </td>
            </tr>
        {/foreach}
        <tr>
            <td>NEW</td>
            <td><input id="cms-blog-timestamp" title="Timestamp" type="datetime" placeholder="YYYY:MM:DD HH:MM:SS"></td>
            <td><input id="cms-blog-author" title="Author" type="text" placeholder="Author"></td>
            <td><input id="cms-blog-title" title="Title" type="text" placeholder="Title"></td>
            <td><textarea id="cms-blog-content" title="Article" placeholder="Article content"></textarea></td>
            <td><input id="cms-blog-img" title="Image" type="text" placeholder="Image"></td>
            <td><button id="cms-blog-add" type="submit"'>ADD</button></td>
            <td><button id="cms-blog-clear" type="submit"'>CLEAR</button></td>
            <td></td>
        </tr>
        </tbody>
    </table>

</div>