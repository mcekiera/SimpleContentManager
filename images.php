<?php
include('config.php');
include('classes/MySQL.php');
include('classes/GalleryDB.php');

$gallery = new GalleryDB();
$images = $gallery->getData();

$rest_json = file_get_contents("php://input");
$_POST = json_decode($rest_json, true);

switch($_SERVER['REQUEST_METHOD'])
{
    case 'GET':
        $index = null;
        $quantity = null;

        if ($_GET["i"]) {
            $index = intval($_GET["i"]);
        }
        if ($_GET["q"]) {
            $quantity = intval($_GET["q"]);
        }

        if ($index && $quantity) {
            $result = array_slice($images, $index, $quantity);
        } elseif ($index) {
            $result = array_slice($images, $index, 3);
        } elseif ($quantity) {
            $result = array_slice($images, 0, $quantity);
        } else {
            $result = $images;
        }

        if (count($result) + $index < count($images)) {
            $result[] = true;
        } else {
            $result[] = false;
        }

        echo json_encode($result);
        break;
    case 'POST':
        if($_POST['action' == "update"]) {
            $response = $gallery->update($_POST['id'], $_POST['alt'], $_POST['path'], $_POST['file'], $_POST['ext']);
        } elseif ($_POST['action'] == 'insert') {
            $response = $gallery->insert($_POST['alt'], $_POST['path'], $_POST['file'], $_POST['ext']);
        } else {
            echo "Request unknown";
        }

        break;
    default:
        echo "Unknown request.";
}

?>