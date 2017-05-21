{extends file='layout/default.tpl'}

{block name=main}
    <div class="" style="background-image: url({$article.img})">
        <h1>{$article.title}</h1>
    </div>

    <p>{$article.author}</p>
    <p>{$article.timestamp}</p>

    <p>{$article.content}</p>
{/block}

{block name=scripts}
    <script src="libs/jquery-3.2.1.js"></script>
    <script src="assets/js/cms.js"></script>
{/block}