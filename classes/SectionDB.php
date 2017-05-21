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
        $n = $this->mysql->escape($name);
        $t = $this->mysql->escape($title);
        $d = $this->mysql->escape($domid);
        $m = $this->mysql->escape($menu);
        $c = $this->mysql->escape($content);

        $sql = "INSERT INTO section VALUES (null, '{$n}', '{$t}', '{$d}', '{$m}', '{$c}')";
        return $this->mysql->query($sql);
    }

    function update($id, $name, $title, $domid, $menu, $content) {
        $n = $this->mysql->escape($name);
        $t = $this->mysql->escape($title);
        $d = $this->mysql->escape($domid);
        $m = $this->mysql->escape($menu);
        $c = $this->mysql->escape($content);

        $sql = "UPDATE section SET name='{$n}', title='{$t}', domid='{$d}', menu='{$m}', content='{$c}' WHERE id={$id}";
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