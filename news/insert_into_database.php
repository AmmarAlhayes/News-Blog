<?php

	
	include 'connect_to_database.php';

	$i = $_POST['i'];
	$btn_id = $_POST['btn_id'];
	$source_name = $_POST['source_name'];
	$article_url=$_POST['article_url'];
    	$article_title = $_POST['article_title'];
	$article_description = $_POST['article_description'];
	$article_content=$_POST['article_content'];
    	$article_publish_date = $_POST['article_publish_date'];
	$publish_hour = $_POST['publish_hour'];
	$publish_minute=$_POST['publish_minute'];
    	$publish_second = $_POST['publish_second'];
	
	
	if(empty($_POST['btn_id'])){
		echo "empty";
	}
 
	$sql = "INSERT INTO news_data(btn_id, `source_name`, `article_url`,`article_title`, `article_description`, `article_content`,article_publish_date, publish_hour,publish_minute,publish_second) 
		VALUES ($btn_id,'$source_name','$article_url','$article_title','$article_description','$article_content','$article_publish_date', $publish_hour, $publish_minute, $publish_second)";


	if (mysqli_query($conn, $sql)) {
		echo json_encode(array("statusCode"=>200));
	} 
	else {
		echo json_encode(array("statusCode"=>201));
	}
	if(i==19){
		mysqli_close($conn);
	}
	


?>
