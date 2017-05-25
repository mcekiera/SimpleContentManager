<?php
include('config.php');
include('db.php');
include('classes/MySQL.php');
include('classes/BlogDB.php');

$blog = new BlogDB();
$images = $blog->getData();
$result = [];


$rest_json = file_get_contents("php://input");
$_POST = json_decode($rest_json, true);

switch($_SERVER['REQUEST_METHOD'])
{
    case 'GET':
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
        break;
case 'POST':
        $response = 'start';
        switch ($_POST['action'])
        {
            case 'INSERT':
                $response = $blog->insert($_POST['timestamp'], $_POST['author'], $_POST['title'], $_POST['img'], $_POST['content']);
                break;
            case 'UPDATE' :
                $response = $blog->update($_POST['id'], $_POST['timestamp'], $_POST['author'], $_POST['title'], $_POST['img'], $_POST['content']);
                break;
            case 'DELETE':
                $response = $blog->delete($_POST['id']);
                break;
        }
        echo $response;
        break;
    default:
        echo "Unknown request.";
}

?>