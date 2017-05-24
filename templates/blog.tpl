{extends file='layout/default.tpl'}
{block name=css}
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="/cahee/assets/css/style.css">
{/block}

{block name=main}
    <div class="container-fluid article__box">
        <div class="article__header" style="background-image: url({$article.img})"></div>
        <div class="article__layer" style="background-image: url({$article.img})"></div>
        <div class="article__column container">
            <h1 class="article__title">{$article.title}</h1>
            <p>{$article.author}</p>
            <p>{$article.timestamp}</p>

            <p class="article__content">{$article.content}</p>
        </div>
    </div>
{/block}

{block name=footer}
    {include file='components/footer.tpl'}
{/block}

{block name=scripts}
    <script src="/cahee/libs/jquery-3.2.1.js"></script>
    <script src="/cahee/assets/js/cms.js"></script>
{/block}