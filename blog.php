<?php

include('libs/smarty-3.1.30/libs/Smarty.class.php');
include('config.php');
include('db.php');
include ('classes/MySQL.php');
include('classes/BlogDB.php');

$smarty = new Smarty;

$blog = new BlogDB();

$id = [$_GET['id']];
$article = $blog->getArticle(intval($id[0]));

$smarty->assign('article', $article[0]);
$smarty->display('templates/blog.tpl');
