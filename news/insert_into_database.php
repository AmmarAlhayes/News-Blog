<?php
/*$servername = "localhost";
	$username = "root";
	$password = "";
	$db="school";
	$conn = mysqli_connect($servername, $username, $password,$db);*/
	//header("Content-Type: application/json");
	include 'connect_to_database.php';

	
	/*$btn_id=$_POST['btn_id'];
    $first = $_POST['first'];
	$last = $_POST['last'];*/

	//$phone=$_POST['phone'];
	//$city=$_POST['city'];

	//$newsApiArray = json_decode(stripslashes($_POST['newsApiArray']));
	//$newsApi = json_decode(stripslashes($_POST['newsApiArray']));
	//$newsApi = array();
	//$newsApi = (Array)json_encode(($_POST['newsApiArray']));
	//$newsApiArray = json_decode(urldecode((($_POST['newsApiArray']))));
	//$newsApi = json_decode(file_get_contents("php://input"));
	//print_r($newsApi);
	/*foreach($newsApiArray as $d){
		
		$btn_id       = $d[i][0];
		$source_name  = $d[i][1];
		$article_url  = $d[i][2];
		$title        = $d[i][3];
		$description  = $d[i][4];
		$content      = $d[i][5];
		$publish_date = $d[i][6];
		$hour         = $d[i][7];
		$minute       = $d[i][8];
		$second       = $d[i][9];


		$sql = "INSERT INTO articledata(btn_id, `source_name`, `article_url`,`title`, `article_description`, `content`,publish_date, hour,minute,second) 
		VALUES ($btn_id,'$source_name','$article_url','$title','$description','$content','$publish_date', $hour, $minute, $second)";
		
	}
	
	/*$sql = "INSERT INTO `article_data`( `btn_id`,`first`, `last`) 
	VALUES ('$btn_id','$first','$last')";*/


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
	
	//print_r ($i);
	if(empty($_POST['btn_id'])){
		echo "empty";
	}

	//$sql = "INSERT INTO articledata(btn_id, `source_name`, `article_url`,`title`, `article_description`, `content`,publish_date, hour,minute,second) 
		//VALUES ($btn_id,'$source_name','$article_url','$title','$description','$content','$publish_date', $hour, $minute, $second)";
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