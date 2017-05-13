<header id="js-header" class="navbar navbar-fixed-top container-fluid header--extended">
    <nav class="container">
        <h1 class="hidden-title">Menu</h1>
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-collapse"
                    aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar bar--left"></span>
                <span class="icon-bar bar--hidden"></span>
                <span class="icon-bar bar--right"></span>
            </button>
            <a class="navbar-brand logo logo--lg" href="#">Cahee</a>
        </div>
        <div class="collapse navbar-collapse" id="nav-collapse">
            <ul id="js-menu" class="nav navbar-nav navbar-right menu">

                {foreach from=$sections item=$section}
                    {if $section['menu']}
                        <li {if $section['id'] == 1} class="active" {/if} ><a class="menu__link" href="#{$section['domid']}">{$section['name']}</a></li>
                    {/if}
                {/foreach}

            </ul>
        </div>
    </nav>
</header>