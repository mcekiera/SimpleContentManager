<?php

class GalleryDB
{
    private $data = [];
    private $rawData = [];
    private $mysql;

    function __construct()
    {
        $this->mysql = new MySQL();
        $query = 'SELECT * FROM gallery';
        $this->rawData = $this->mysql->query($query);

        foreach($this->rawData as $row) {
            $this->data[] = array(
                'id' => $row['id'],
                'url' => $row['path'].$row['file'].$row['ext'],
                'alt' => $row['alt']
            );
        }
    }

    function insert($alt, $path, $file, $ext) {
        $sql = "INSERT INTO gallery VALUES (null, '{$alt}', '{$path}', '{$file}', '{$ext}')";
        return $this->mysql->query($sql);
    }

    function update($id, $alt, $path, $file, $ext) {
        $sql = "UPDATE gallery SET alt='{$alt}', path='{$path}', file='{$file}', ext='{$ext}' WHERE id={$id}";
        $this->mysql->query($sql);
        return $sql;
    }

    function delete($id) {
        $sql = "DELETE FROM gallery WHERE id = {$id}";
        return $this->mysql->query($sql);
    }

    function getData() {
        return $this->data;
    }

    function getRawData() {
        return $this->rawData;
    }

}