<?php

include('libs/smarty-3.1.30/libs/Smarty.class.php');
include('config.php');
include ('classes/MySQL.php');
include('classes/BlogDB.php');

$smarty = new Smarty;

$blog = new BlogDB();

$id = [$_GET['id']];
var_dump($id);
$article = $blog->getArticle(intval($id[0]));

var_dump($article);

$smarty->assign('article', $article[0]);
$smarty->display('templates/blog.tpl');
