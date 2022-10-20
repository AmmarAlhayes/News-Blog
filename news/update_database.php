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
	


	$sql = "UPDATE `news_data` 
	SET `source_name`='$source_name',
	`article_url`='$article_url',`article_title`='$article_title',
	`article_description`='$article_description',`article_content`='$article_content',
	`article_publish_date`= '$article_publish_date',`publish_hour`= $publish_hour,
	`publish_minute`= $publish_minute,`publish_second`= $publish_second WHERE btn_id=$btn_id";

    


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
