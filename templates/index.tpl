{extends file='layout/default.tpl'}

{block name=title}
    <title>Cahee</title>
{/block}

{block name=css}
    {include file="components/css.tpl"}
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
    {include file="components/scripts.tpl"}
{/block}
