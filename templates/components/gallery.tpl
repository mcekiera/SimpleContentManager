<section id="{$sections[4]['domid']}" class="container-fluid gallery sec">
<div id="js-gallery" class="container">
    <div class="row">
        <div class="sec__content sec__content--black col-sm-8 col-sm-offset-2">
            <h1 class="sec__title">{$sections[4]['title']}</h1>
            <p>{$sections[4]['content']}</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <img class="img-responsive" src="{$gallery[0]['url']}" alt="{$gallery[0]['alt']}">
        </div>
        <div class="col-md-4">
            <div class="row">
                <img class="img-responsive col-xs-6 col-md-12 col-xxs-12" src="{$gallery[1]['url']}" alt="{$gallery[1]['alt']}">
                <img class="img-responsive col-xs-6 col-md-12 col-xxs-12" src="{$gallery[2]['url']}"
                     alt="{$gallery[2]['alt']}">
            </div>
        </div>
    </div>
    <div id="js-gallery-container" class="row">

        {if $gallery|count > 3 }
            {foreach array_slice($gallery, 3) as $img}

                <img class="img-responsive col-xs-6 col-xxs-12" src="{$img['url']}" alt="{$img['alt']}">

            {/foreach}
        {/if}

    </div>
</div>
<button id="js-gallery-button" class="sec__button sec__button--gallery">View more</button>
</section>