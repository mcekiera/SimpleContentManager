<?php
include('config.php');
include('classes/MySQL.php');
include('classes/GalleryDB.php');

$gallery = new GalleryDB();
$images = $gallery->getData();

if($_REQUEST["i"]) {
    $index = intval($_REQUEST["i"]);
}
if($_REQUEST["q"]) {
    $quantity = intval($_REQUEST["q"]);
}

if($index && $quantity) {
    $result = array_slice($images, $index, $quantity);
} elseif ($index) {
    $result = array_slice($images, $index, 3);
} elseif ($quantity) {
    $result = array_slice($images, 0, $quantity);
} else {
    $result = $images;
}

if(count($result) + $index < count($images)) {
    $result[] = true;
} else {
    $result[] = false;
}

echo json_encode($result);

?>