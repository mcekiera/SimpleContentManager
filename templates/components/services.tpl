<section id="{$sections[3]['domid']}" class="container-fluid services sec">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-push-6">
                <div class="sec__box">
                    <h1 class="sec__title sec__content--white">{$sections[3]['title']}</h1>
                    <img class="img-responsive services__img" src="assets/img/b03.png" alt="tomato pieces">
                </div>
            </div>
            <div class="col-sm-6 col-sm-pull-6">
                <ul class="services__list">
                    {assign var='content' value=';'|explode:$sections[3]['content']}

                    {foreach $content as $item}
                        {assign var='file_name' value=$item|lower|regex_replace: '/\s/' : '_'}

                        <li class="services__item">
                            <span class="services__text">{$item}</span>
                            <span class="services__icon">
                              <img src="assets/img/icon-{$file_name}.png" alt="shopping cart icon">
                            </span>
                        </li>

                    {/foreach}

                </ul>
            </div>
        </div>
    </div>
</section>