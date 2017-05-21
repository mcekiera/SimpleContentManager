<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand logo logo--sm" href="index.php">Cahee</a>
            </div>
            <ul class="nav navbar-nav">
                <li {if !isset($site)}class="active"{/if}><a href="cms.php">CMS</a></li>
                <li {if $site=='content'}class="active"{/if}><a href="cms.php?site=content">Content</a></li>
                <li {if $site=='images'}class="active"{/if}><a href="cms.php?site=images">Gallery</a></li>
                <li {if $site=='articles'}class="active"{/if}><a href="cms.php?site=articles">Blog</a></li>
            </ul>
    </div>
    </div>
</nav>