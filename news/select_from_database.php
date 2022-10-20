<?php


include 'connect_to_database.php';


$result = mysqli_query($conn, "SELECT * FROM `news_data` ORDER BY `news_data`.`article_publish_date` DESC ");
 
$data = array();
while ($row = mysqli_fetch_object($result))
{
    array_push($data, $row);
}
 
echo json_encode($data);
mysqli_close($conn);
//exit();


?>
