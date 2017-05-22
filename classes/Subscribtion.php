<?php


class Subscribtion
{
    private $mysql;

    function __construct()
    {
        $this->mysql = new MySQL();
    }

    function subscribe($email) {
        $e = $this->mysql->escape($email);

        $sql = "INSERT INTO subscribe VALUES (null, '{$e}')";
        return $this->mysql->query($sql);
    }

    function unsubscribe($email) {
        $sql = "DELETE FROM section WHERE email={$email}";
        return $this->mysql->query($sql);
    }
}