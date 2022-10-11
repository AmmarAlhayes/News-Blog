<?php

/*$conn = mysqli_connect("localhost", "root", "", "classicmodels");*/

include 'connect_to_database.php';

//$result = mysqli_query($conn, "SELECT count(*) as row_count FROM test");

$result = mysqli_query($conn, "SELECT count(*) as row_count FROM news_data");
 
$data = array();
while ($row = mysqli_fetch_object($result))
{
    array_push($data, $row);
}
 
echo json_encode($data);
mysqli_close($conn);
//exit();


?>