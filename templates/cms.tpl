{extends file='layout/default.tpl'}

{block name=title}
    <title>Cahee - Content Manager</title>
{/block}

{block name=css}

{/block}

{block name=header}
    {include file="components/cms-header.tpl"}
    {include file="components/cms-images.tpl"}
    {include file="components/cms-blog.tpl"}

{/block}

{block name=main}
    {include file="components/cms-main.tpl"}
{/block}


