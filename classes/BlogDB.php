<?php


class BlogDB
{
    private $data = [];
    private $rawData = [];
    private $mysql;

    function __construct()
    {
        $this->mysql = new MySQL();
        $query = "SELECT * FROM blog ORDER BY timestamp DESC";
        $this->rawData = $this->mysql->query($query);

        foreach ($this->rawData as $row) {
            $time = strtotime($row["timestamp"]);
            $month = date("M",$time);
            $day = date("d", $time);

            $this->data[] = array(
                "id" => $row["id"],
                "title" => $row["title"],
                "author" => $row["author"],
                "img" => $row["img"],
                "day" => $day,
                "month" => $month,
                "counter" => $this->dateInRelativeWords($row["timestamp"])
            );
        }
    }

    function insert($timestamp, $author, $title, $img, $content ) {
        $ts = $this->mysql->escape($timestamp);
        $a = $this->mysql->escape($author);
        $t = $this->mysql->escape($title);
        $i = $this->mysql->escape($img);
        $c = $this->mysql->escape($content);

        $sql = "INSERT INTO blog VALUES (null, '{$ts}', '{$a}', '{$t}', '{$i}', '{$c}')";
        $this->mysql->query($sql);
        return $sql;
    }

    function update($id, $timestamp, $author, $title, $img, $content ) {
        $ts = $this->mysql->escape($timestamp);
        $a = $this->mysql->escape($author);
        $t = $this->mysql->escape($title);
        $i = $this->mysql->escape($img);
        $c = $this->mysql->escape($content);

        $sql = "UPDATE blog SET timestamp='{$ts}', author='{$a}', title='{$t}', img='{$i}', content='{$c}' WHERE id={$id}";
        $this->mysql->query($sql);
        return $sql;
    }

    function delete($id) {
        $sql = "DELETE FROM blog WHERE id = {$id}";
        return $this->mysql->query($sql);
    }

    function getData() {
        return $this->data;
    }

    function getArticle($id) {
        $sql = "SELECT * FROM blog WHERE id={$id}";
        return $this->mysql->query($sql);
    }

    function getRawData() {
        usort($this->rawData, function($a, $b) {
            return $a["id"] - $b["id"];
        });
        return $this->rawData;
    }

    private function dateInRelativeWords($datatime) {
        $hours = abs((strtotime($datatime) - time())/60/60);
        $result = $this->hoursToSentence($hours);
        return $result;
    }

    private function hoursToSentence($hours) {
        $result = "";
        if(intval($hours) <= 1) {
            $result = "1 hour ago";
        } elseif ($hours < 24) {
            $result = intval($hours)." hours ago";
        } elseif (intval($hours/24) == 1) {
            $result = "1 day ago";
        } elseif ($hours/24 < 7) {
            $result = intval($hours/24)." days ago";
        } elseif (intval($hours/24/7) == 1) {
            $result = "1 week ago";
        } elseif (intval($hours/24/7) < 4) {
            $result = intval($hours/24/7)." weeks ago";
        } elseif (intval($hours/24/7/4) == 1) {
            $result = "1 month ago";
        } elseif (intval($hours/24/7/4) < 12) {
            $result = intval($hours/24/7/4)." months ago";
        } elseif (intval($hours/24/7/4/12) == 1) {
            $result = intval($hours/24/7/4/12)." year ago";
        } else {
            $result = intval($hours/24/7/4/12)." years ago";
        }
        return $result;
    }

}