<?php

class MySQL
{
    private $servername;
    private $username;
    private $password;
    private $database;

    function __construct()
    {
        global $db;
        $this->serverName = $db['host'];
        $this->username = $db['user'];
        $this->password = $db['password'];
        $this->database = $db['name'];
    }

    function query($sql)
    {
        $conn = $this->connect();
        $result = $conn->query($sql);
        $rows = [];

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {

                $rows[] = $row;
            }
        }

        $conn->close();
        return $rows;
    }

    function escape($text) {
        return $this->connect()->real_escape_string($text);
    }

    private function connect()
    {
        $conn = new mysqli($this->servername, $this->username, $this->password, $this->database);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        return $conn;
    }


}
