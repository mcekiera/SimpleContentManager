<?php

include('config.php');
include('db.php');
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
                $to = $_POST['email'];
                $subject = "Cahee subscription";
                $message = "Your Cahee subscription is active. <br> If you want to resign, or this mail was not adressed for you, pleas click <a href='http://www.mcekiera.pl/cahee/subscribe.php?action=UNSUBSCRIBE&email=". $_POST['email']."'>this link</a>";

                $headers .= "MIME-Version: 1.0\r\n";
                $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
                mail($to,$subject,$message,$headers);
                break;
            case 'UNSUBSCRIBE':
                $response = $sub->unsubscribe($_POST['email']);
                break;
        }
        echo $response;
        break;
    case "GET":
        $response = $_GET;
        if($_GET['action'] === 'UNSUBSCRIBE') {
            $response = $sub->unsubscribe($_GET['email']);
        }
        echo "Your subscritpion is disabled.";
        break;
    default:
        echo "Unknown request.";
}