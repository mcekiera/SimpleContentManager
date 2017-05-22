<?php

include('config.php');
include ('classes/MySQL.php');
include('classes/Subscribtion.php');

$sub = new Subscribtion();

$rest_json = file_get_contents("php://input");
$_POST = json_decode($rest_json, true);

switch($_SERVER['REQUEST_METHOD'])
{
    case 'POST':
        $response = $_POST;
        switch ($_POST['action'])
        {
            case 'SUBSCRIBE':
                $response = $sub->subscribe($_POST['email']);
                break;
            case 'UNSUBSCRIBE':
                $response = $sub->unsubscribe($_POST['email']);
                break;
        }
        echo $response;
        break;
    default:
        echo "Unknown request.";
}
