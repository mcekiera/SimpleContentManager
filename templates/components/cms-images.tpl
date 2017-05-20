<div class="cms-img">
    <table class="cms-img__table table table-striped table-hover table-responsive">
        <thead>
            <tr>
                <th>ID</th>
                <th>Description</th>
                <th>Path</th>
                <th>File</th>
                <th>Extension</th>
                <th>Picture</th>
                <th>UPDATE</th>
                <th>DELETE</th>
            </tr>
        </thead>
        <tbody>
        {foreach $gallery as $image}
            <tr>
                <td>{$image['id']}</td>
                <td><input id="cms-img-desc-{$image['id']}" title="Description" type="datetime" value="{$image['alt']}"></td>
                <td><input id="cms-img-path-{$image['id']}" title="Path to directory" type="text" value="{$image['path']}"></td>
                <td><input id="cms-img-file-{$image['id']}" title="File name" type="text" value="{$image['file']}"></td>
                <td><input id="cms-img-ext-{$image['id']}" title="File extension" type="text" value="{$image['ext']}"></td>
                <td><img class="cms-img__image img-responsive" src="{$image['path']}{$image['file']}{$image['ext']}"></td>
                <td><button class="cms-img-update" type="submit" data-id='{$image['id']}'>Update</button> </td>
                <td><button class="cms-img-delete" type="submit" data-id='{$image['id']}'>Delete</button> </td>
            </tr>
        {/foreach}
        <tr>
            <td>NEW</td>
            <td><input id="cms-img-desc" title="Description" type="text" placeholder="Value for alt attr"></td>
            <td><input id="cms-img-path" title="Path to directory" type="text" placeholder="Path to directory"></td>
            <td><input id="cms-img-file" title="File name" type="text" placeholder="File name"></td>
            <td><input id="cms-img-ext" title="File extension" type="text" placeholder="File extension"></td>
            <td><button id="cms-img-add" type="submit"'>ADD</button></td>
            <td><button id="cms-img-clear" type="submit"'>CLEAR</button></td>
            <td></td>
        </tr>
        </tbody>
    </table>
</div>