<div class="cms-img">
    <table class="cms-img__table">
        <tbody>
            <tr>
                <th>No.</th>
                <th>Desc.</th>
                <th>Path</th>
                <th>File</th>
                <th>Ext.</th>
                <th>DELETE</th>
                <th>Pic.</th>
            </tr>


        {foreach $gallery as $image}
            <tr>
                <th>{$image['id']}</th>
                <th><input title="Description" type="datetime" value="{$image['alt']}"></th>
                <th><input title="Path to directory" type="datetime" value="{$image['path']}"></th>
                <th><input title="File name" type="datetime" value="{$image['file']}"></th>
                <th><input title="File extension" type="datetime" value="{$image['ext']}"></th>
                <th><button type="submit" data-id='{$image['id']}'>X</button> </th>
                <th><img class="cms-img__image" src="{$image['path']}{$image['file']}{$image['ext']}"></th>
            </tr>
        {/foreach}

        </tbody>
    </table>
    <form class="cms-img__form">
        <label>Add entry:</label>
        <label>Description<input type="text"></label>
        <label>Path<input type="text"></label>
        <label>File name<input type="text"></label>
        <label>Extension<input type="text"></label>
        <button id="js-cms-insert-img" type="submit">Add</button>
    </form>
    <form class="cms-img__form">
        <label>Edit entry:</label>
        <label>Id<input type="number" min="1" max="{$gallery|@count}"></label>
        <label>Description<input type="text"></label>
        <label>Path<input type="text"></label>
        <label>File name<input type="text"></label>
        <label>Extension<input type="text"></label>
        <button id="js-cms-update-img" type="submit">Update</button>
    </form>
    <form
</div>