<section id="{$sections[2]['domid']}" class="container-fluid about sec">
    <div class="container">
        <div class="row">
            <div class="col-sm-5 col-md-6">
                <img class="img-responsive about__img" src="assets/img/b02.png" alt="strawberries bowl pic">
            </div>
            <div class="col-sm-7 col-md-5 col-md-offset-1">
                <div class="sec__content sec__content--white">
                    <h1 class="sec__title">{$sections[2]['title']}</h1>
                    {assign var='content' value=';'|explode:$sections[2]['content']}
                    <p>{$content[0]} </p>
                    <p>{$content[1]}</p>
                </div>
            </div>
        </div>
    </div>
</section>