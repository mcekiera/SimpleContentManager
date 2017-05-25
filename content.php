<?php
include('config.php');
include('db.php');
include('classes/MySQL.php');
include('classes/SectionDB.php');

$content = new SectionDB();

$rest_json = file_get_contents("php://input");
$_POST = json_decode($rest_json, true);

switch($_SERVER['REQUEST_METHOD'])
{
    case 'POST':
        $response = 'start';
        switch ($_POST['action'])
        {
            case 'INSERT':
                $response = $content->insert($_POST['name'], $_POST['title'], $_POST['domid'], $_POST['menu'], $_POST['content']);
                break;
            case 'UPDATE' :
                $response = $content->update($_POST['id'], $_POST['name'], $_POST['title'], $_POST['domid'], $_POST['menu'], $_POST['content']);
                break;
            case 'DELETE':
                $response = $content->delete($_POST['id']);
                break;
        }
        echo $response;
        break;
    default:
        echo "Unknown request.";
}

?>