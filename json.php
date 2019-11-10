<?php
    $con = mysqli_connect('localhost', 'root', '', 'test');
    if(!($con))
      die();
    $cmd = "SELECT * FROM images ORDER BY id DESC";
    $query = mysqli_query($con, $cmd);
    $file = fopen('data.json', 'w');
    $arr = array();
    if ($query->num_rows > 0)
      while ($row = mysqli_fetch_assoc($query)) {
        array_push($arr, substr($row['link'], -11));
    }
    $arr = array("link" => $arr);
    $json = json_encode($arr);
    fwrite($file, $json);
    fclose($file);
?>