<?php
/* Smarty version 3.1.30, created on 2017-04-28 00:10:49
  from "/home/mcekiera/PhpstormProjects/PhpTest/templates/index.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59026c697ac0c1_34685506',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fc1d00d264f98e87d5d7194ff0458a799f5a1f3f' => 
    array (
      0 => '/home/mcekiera/PhpstormProjects/PhpTest/templates/index.tpl',
      1 => 1493331039,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59026c697ac0c1_34685506 (Smarty_Internal_Template $_smarty_tpl) {
?>
<head>
    <title>Info</title>
</head>
<body>


<h1>Test</h1>

<ul>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['array']->value, 'v');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['v']->value) {
?>
        <li><?php echo $_smarty_tpl->tpl_vars['v']->value;?>
</li>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

</ul>

</body>
</html><?php }
}
