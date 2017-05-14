<section id="{$sections[6]['domid']}" class="container-fluid blog sec">
    <div class="container">
        <div class="row">
            <div class="sec__content sec__content--white col-sm-6 col-sm-offset-3">
                <h1 class="sec__title">{$sections[6]['title']}</h1>
                <p>{$sections[6]['content']}</p>
            </div>
            <div class="col-xs-12">
                <div id="js-blog-container" class="row">

                    {foreach $blog as $item}
                    <div class="col-sm-4">
                        <div class="blog-entry" style="background-image: url({$item['img']})">
                            <p class="blog-entry__date"><span>{$item['day']}</span> {$item['month']}</p>
                            <p class="blog-entry__title">{$item['title']}</p>
                            <p class="blog-entry__stamp">By {$item['author']} - {$item['counter']}</p>
                        </div>
                    </div>
                    {/foreach}

                </div>
            </div>
            <div class="col-xs-12">
                <button id="js-blog-button" class="sec__button sec__button--blog">View more</button>
            </div>
        </div>
    </div>
</section>