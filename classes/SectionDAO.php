<?php

include('MySQL.php');

class SectionDAO
{
    private $data;

    function __construct()
    {
        $mysql = new MySQL();
        $res = $mysql->query('SELECT * FROM section');
        foreach ($res as $row) {
            $this->data[$row['domid']] = $row;
        }
    }

    function getData() {
        return $this->data;
    }


}