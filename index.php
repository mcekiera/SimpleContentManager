<?php

include('libs/smarty-3.1.30/libs/Smarty.class.php');

// create object
$smarty = new Smarty;

$smarty->setTemplateDir('templates');
$smarty->setCompileDir('templates_c');
$smarty->setCacheDir('cache');
$smarty->setConfigDir('configs');

// assign some content. This would typically come from
// a database or other source, but we'll use static
// values for the purpose of this example.
$smarty->assign('array', array("1","2","3"));


// display it
$smarty->display('templates/index.tpl');

?>