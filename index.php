<?php

include('libs/smarty-3.1.30/libs/Smarty.class.php');
include('config.php');
include('classes/SectionDAO.php');

$mysql = new MySQL();
$smarty = new Smarty;

$section = new SectionDAO();

$smarty->setTemplateDir('templates');
$smarty->setCompileDir('templates_c');
$smarty->setCacheDir('cache');
$smarty->setConfigDir('configs');

$smarty->assign('CONFIG', $config);
$smarty->assign('section', $section->getData());

$smarty->display('templates/index.tpl');

?>