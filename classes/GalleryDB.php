<?php

class GalleryDB
{
    private $data = [];

    function __construct()
    {
        $mysql = new MySQL();
        $query = 'SELECT * FROM gallery';
        $result = $mysql->query($query);

        foreach($result as $row) {
            $this->data[] = array(
                'id' => $row['id'],
                'url' => $row['path'].$row['file'].$row['ext'],
                'alt' => $row['alt']
            );
        }
    }

    function getData() {
        return $this->data;
    }

}