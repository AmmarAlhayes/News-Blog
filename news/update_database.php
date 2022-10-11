<?php
	//error_reporting(0);
    include 'connect_to_database.php';
	/*$btn_id=$_POST['btn_id'];
	$first=$_POST['first'];
	$last=$_POST['last'];*/

   /* $newsApiArray = json_decode($_POST['newsApiArray']);

	for( $i=0;$i<sizeof($newsApiArray);$i++){
	
	$i = $_POST['i'];
    $btn_id       = $newsApiArray[i][0];
	$source_name  = $newsApiArray[i][1];
	$article_url  = $newsApiArray[i][2];
    $title        = $newsApiArray[i][3];
	$description  = $newsApiArray[i][4];
	$content      = $newsApiArray[i][5];
    $publish_date = $newsApiArray[i][6];
	$hour         = $newsApiArray[i][7];
	$minute       = $newsApiArray[i][8];
    $second       = $newsApiArray[i][9];


	$sql = "UPDATE `articledata` 
	SET `source_name`='$source_name',
	`url`='$url',`title`='$title',
	`description`='$description',`content`='$content',
	`publish_date`= $publish_date',`hour`='$hour',
	`minute`='$minute',`second`='$second' WHERE btn_id=$btn_id";
	
	}*/

    
    

	/*$sql = "UPDATE `test` 
	SET `first`='$first',
	`last`='$last' WHERE btn_id=$btn_id";*/

	
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