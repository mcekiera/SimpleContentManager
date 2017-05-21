{extends file='layout/default.tpl'}

{block name=title}
    <title>Cahee - Content Manager</title>
{/block}

{block name=css}
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="assets/css/cms.css">
{/block}

{block name=header}
    {include file="components/cms-header.tpl"}
{/block}

{block name=main}
    {if isset($site)}
        {include file="components/cms-{$site}.tpl"}
        <a class="cms__back" href="cms.php">BACK</a>
    {else}
        {include file="components/cms-main.tpl"}
    {/if}
{/block}

{block name=scripts}
    <script src="libs/jquery-3.2.1.js"></script>
    <script src="assets/js/cms.js"></script>
{/block}


