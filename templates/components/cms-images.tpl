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
                <th>{$image['alt']}</th>
                <th>{$image['path']}</th>
                <th>{$image['file']}</th>
                <th>{$image['ext']}</th>
                <th><button type="submit">X</button> </th>
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
        <button type="submit"></button>
    </form>
    <form class="cms-img__form">
        <label>Edit entry:</label>
        <label>Id<input type="number" min="1" max="{$gallery|@count}"></label>
        <label>Description<input type="text"></label>
        <label>Path<input type="text"></label>
        <label>File name<input type="text"></label>
        <label>Extension<input type="text"></label>
        <button type="submit"></button>
    </form>
    <form
</div>