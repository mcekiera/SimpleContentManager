<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    {block name=title}Page title{/block}
    {block name=styling}CSS{/block}
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.min.css">
</head>
<body>
<p>{$section['blog']['id']}</p>
    {block name=nav}Main navigation{/block}
    {block name=header}Main header{/block}
    {block name=main}Content{/block}
    {block name=footer}Site body{/block}

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    {block name=script}Scripts{/block}
    <script src="../../assets/js/script.js"></script>
</body>
</html>