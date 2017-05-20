{extends file='layout/default.tpl'}

{block name=title}
    <title>Cahee</title>
{/block}

{block name=css}
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Pacifico|Raleway:200,400,500,600,700,900" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.min.css">
{/block}

{block name=header}
    {include file='components/header.tpl'}
{/block}

{block name=main}
    {include file="components/hero.tpl"}
    {include file="components/about.tpl"}
    {include file="components/services.tpl"}
    {include file="components/gallery.tpl"}
    {include file="components/subscribe.tpl"}
    {include file="components/blog.tpl"}
    {include file="components/contact.tpl"}
{/block}

{block name=footer}
    {include file="components/footer.tpl"}
{/block}

{block name=scripts}
    <script src="libs/jquery-3.2.1.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="assets/js/ajax.js"></script>
{/block}
