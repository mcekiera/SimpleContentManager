<?php

class MySQL
{
    private $servername;
    private $username;
    private $password;
    private $database;

    function __construct()
    {
        global $config;
        $this->serverName = $config['db']['host'];
        $this->username = $config['db']['user'];
        $this->password = $config['db']['password'];
        $this->database = $config['db']['name'];
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
