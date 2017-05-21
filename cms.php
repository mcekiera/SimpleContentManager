<?php

include('libs/smarty-3.1.30/libs/Smarty.class.php');
include('config.php');
include ('classes/MySQL.php');
include('classes/SectionDB.php');
include('classes/GalleryDB.php');
include('classes/BlogDB.php');

$smarty = new Smarty;

$sections = new SectionDB();
$gallery = new GalleryDB();
$blog = new BlogDB();

$smarty->setTemplateDir('templates');
$smarty->setCompileDir('templates_c');
$smarty->setCacheDir('cache');
$smarty->setConfigDir('configs');

$site = [$_GET['site']];

$smarty->assign('sections', $sections->getData());
$smarty->assign('gallery', $gallery->getRawData());
$smarty->assign('blog', $blog->getRawData());
$smarty->assign('site', $site[0]);

$smarty->display('templates/cms.tpl');

?>