<?php

include('libs/smarty-3.1.30/libs/Smarty.class.php');
include('config.php');
include('classes/SectionDAO.php');

$mysql = new MySQL();
$smarty = new Smarty;

$sections = new SectionDAO();

$smarty->setTemplateDir('templates');
$smarty->setCompileDir('templates_c');
$smarty->setCacheDir('cache');
$smarty->setConfigDir('configs');

$smarty->assign('CONFIG', $config);
$smarty->assign('sections', $sections->getData());

$smarty->display('templates/index.tpl');

?>