<?php
/* Smarty version 3.1.30, created on 2017-05-10 23:41:37
  from "/home/mcekiera/PhpstormProjects/Cahee/templates/index.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59138911396738_11703635',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '60343f7186a0bb45c24b0970c91e6db256c34f31' => 
    array (
      0 => '/home/mcekiera/PhpstormProjects/Cahee/templates/index.tpl',
      1 => 1493331039,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59138911396738_11703635 (Smarty_Internal_Template $_smarty_tpl) {
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
