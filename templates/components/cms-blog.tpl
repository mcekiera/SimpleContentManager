<div class="cms-blog">
    <table class="cms-img__table">
        <tbody>
        <tr>
            <th>No.</th>
            <th>Timestamp</th>
            <th>Author</th>
            <th>Title</th>
            <th>Content</th>
            <th>Image</th>
            <th>Pic</th>
            <th>Delete</th>
        </tr>


        {foreach $blog as $article}
            <tr>
                <th>{$article['id']}</th>
                <th><input title="Data and time" type="datetime" value="{$article['timestamp']}"></th>
                <th><input title="Author" type="text" value="{$article['author']}"></th>
                <th><input title="Title" type="text" value="{$article['title']}"></th>
                <th><textarea title="Content">{$article['content']}</textarea></th>
                <th><input title="Image" type="text" value="{$article['img']}"></th>
                <th><img class="cms-img__image" src="{$article['img']}"></th>
                <th><button id="js-cms-delete-img" type="submit" data-id='{$article['id']}'>X</button> </th>
            </tr>
        {/foreach}

        </tbody>
    </table>
    <th><button id="js-cms-delete-img" type="submit" data-id='{$article['id']}'>X</button> </th>
    <label>Add article:
        <form>
            <label>Timestamp:<input type="datetime"></label>
            <label>Author:<input type="text"></label>
            <label>Title:<input type="text"></label>
            <label>Image:<input type="url"></label>
            <label>Content:<textarea></textarea></label>
            <button type="submit">Add</button>
        </form>
    </label>
</div>