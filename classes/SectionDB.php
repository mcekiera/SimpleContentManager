<?php

class SectionDB
{
    private $data;
    private $rawData;
    private $mysql;

    function __construct()
    {
        $this->mysql = new MySQL();
        $query = 'SELECT * FROM section';
        $this->rawData = $this->mysql->query($query);

        foreach ($this->rawData as $row) {
            $this->data[$row['id']] = $row;
        }
    }


    function insert($name, $title, $domid, $menu, $content) {
        $sql = "INSERT INTO section VALUES (null, '{$name}', '{$title}', '{$domid}', '{$menu}', '{$content}')";
        return $this->mysql->query($sql);
    }

    function update($id, $name, $title, $domid, $menu, $content) {
        $sql = "UPDATE section SET name='{$name}', title='{$title}', domid='{$domid}', menu='{$menu}', content='{$content}' WHERE id={$id}";
        $this->mysql->query($sql);
        return $sql;
    }

    function delete($id) {
        $sql = "DELETE FROM section WHERE id = {$id}";
        return $this->mysql->query($sql);
    }

    function getData() {
        return $this->data;
    }

    function getRawData() {
        return $this->rawData;
    }


}