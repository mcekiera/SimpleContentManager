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
                <th>{$image['id']}</th>
                <th><input id="cms-img-desc-{$image['id']}" title="Description" type="datetime" value="{$image['alt']}"></th>
                <th><input id="cms-img-path-{$image['id']}" title="Path to directory" type="datetime" value="{$image['path']}"></th>
                <th><input id="cms-img-file-{$image['id']}" title="File name" type="datetime" value="{$image['file']}"></th>
                <th><input id="cms-img-ext-{$image['id']}" title="File extension" type="datetime" value="{$image['ext']}"></th>
                <th><img class="cms-img__image img-responsive" src="{$image['path']}{$image['file']}{$image['ext']}"></th>
                <th><button class="cms-img-update" type="submit" data-id='{$image['id']}'>Update</button> </th>
                <th><button class="cms-img-delete" type="submit" data-id='{$image['id']}'>Delete</button> </th>
            </tr>
        {/foreach}
        <tr>
            <th>NEW</th>
            <th><input id="cms-img-desc" title="Description" type="datetime" placeholder="Value for alt attr"></th>
            <th><input id="cms-img-path" title="Path to directory" type="datetime" placeholder="Path to directory"></th>
            <th><input id="cms-img-file" title="File name" type="datetime" placeholder="File name"></th>
            <th><input id="cms-img-ext" title="File extension" type="datetime" placeholder="File extension"></th>
            <th><button id="cms-img-add" type="submit"'>ADD</button></th>
            <th><button id="cms-img-clear" type="submit"'>CLEAR</button></th>
            <th></th>
        </tr>
        </tbody>
    </table>
</div>