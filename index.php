<?php

include('libs/smarty-3.1.30/libs/Smarty.class.php');
include('config.php');
include ('classes/MySQL.php');
include('classes/SectionDB.php');
include('classes/GalleryDB.php');

$smarty = new Smarty;

$sections = new SectionDB;
$gallery = new GalleryDB();

$smarty->setTemplateDir('templates');
$smarty->setCompileDir('templates_c');
$smarty->setCacheDir('cache');
$smarty->setConfigDir('configs');

$smarty->assign('CONFIG', $config);
$smarty->assign('sections', $sections->getData());
$smarty->assign('gallery', $gallery->getData());

$smarty->display('templates/index.tpl');

?>