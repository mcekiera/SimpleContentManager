<?php


class BlogDB
{
    private $data = [];
    private $rawData = [];

    function __construct()
    {
        $mysql = new MySQL();
        $query = "SELECT * FROM blog ORDER BY timestamp DESC";
        $this->rawData = $mysql->query($query);

        foreach ($this->rawData as $row) {
            $time = strtotime($row['timestamp']);
            $month = date("M",$time);
            $day = date('d', $time);

            $this->data[] = array(
                'title' => $row['title'],
                'author' => $row['author'],
                'img' => $row['img'],
                'day' => $day,
                'month' => $month,
                'counter' => $this->dateInRelativeWords($row['timestamp'])
            );
        }
    }

    function getData() {
        return $this->data;
    }

    function getRawData() {
        usort($this->rawData, function($a, $b) {
            return $a['id'] - $b['id'];
        });
        return $this->rawData;
    }

    private function dateInRelativeWords($datatime) {
        $hours = abs((strtotime($datatime) - time())/60/60);
        $result = $this->hoursToSentence($hours);
        return $result;
    }

    private function hoursToSentence($hours) {
        $result = '';
        if(intval($hours) <= 1) {
            $result = "1 hour ago";
        } elseif ($hours < 24) {
            $result = $hours." hours ago";
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