<?php


include 'connect_to_database.php';



$btn_id = $_GET['q'];
$result = mysqli_query($conn, "SELECT `article_content` FROM news_data WHERE btn_id = $btn_id");

$data = array();
while ($row = mysqli_fetch_object($result))
{
    array_push($data, $row);
}
 
echo json_encode($data);
mysqli_close($conn);
//exit();


?>
