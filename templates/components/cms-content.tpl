<div>
    <table class="cms-img__table table table-striped table-hover table-responsive">
        <thead>
            <th>ID</th>
            <th>Name</th>
            <th>Title</th>
            <th>DomID</th>
            <th>Menu</th>
            <th>Conent</th>
            <th>Update</th>
            <th>Delete</th>
        </thead>
        <tbody>
            {foreach $sections as $section}
            <tr>
                <td>{$section['id']}</td>
                <td><input id="cms-sec-name-{$section['id']}" title="Name of section" type="text" value="{$section['name']}"></td>
                <td><input id="cms-sec-title-{$section['id']}" title="Title of section" type="text" value="{$section['title']}"></td>
                <td><input id="cms-sec-domid-{$section['id']}" title="ID of dom element" type="text" value="{$section['domid']}"></td>
                <td><input id="cms-sec-menu-{$section['id']}" title="Category of menu" type="text" value="{$section['menu']}"></td>
                <td><textarea id="cms-sec-content-{$section['id']}" title="Content of section">{$section['content']}</textarea></td>
                <td><button class="cms-sec-update" type="submit" data-id='{$section['id']}'>Update</button> </td>
                <td><button class="cms-sec-delete" type="submit" data-id='{$section['id']}'>Delete</button> </td>
            </tr>
            {/foreach}
            <tr>
                <td>NEW</td>
                <td><input id="cms-sec-name" title="Name of section" type="text" placeholder="Value for alt attr"></td>
                <td><input id="cms-sec-title" title="Title of section" type="text" placeholder="Title of section"></td>
                <td><input id="cms-sec-domid" title="ID of dom element" type="text" placeholder="ID of dom element"></td>
                <td><input id="cms-sec-menu" title="Category of menu" type="text" placeholder="1 (true) / 0 (false)"></td>
                <td><textarea id="cms-sec-content" title="Content of section" placeholder="Content of section"></textarea></td>
                <td><button id="cms-sec-add" type="submit"'>ADD</button></td>
                <td><button id="cms-sec-clear" type="submit"'>CLEAR</button></td>
                <td></td>
            </tr>

        </tbody>
    </table>
</div>