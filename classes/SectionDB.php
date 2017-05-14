<?php

class SectionDB
{
    private $data;

    function __construct()
    {
        $mysql = new MySQL();
        $query = 'SELECT * FROM section';
        $res = $mysql->query($query);

        foreach ($res as $row) {
            $this->data[$row['id']] = $row;
        }
    }

    function getData() {
        return $this->data;
    }


}