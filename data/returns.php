<?php 
require_once('../class/Report.php');
if(isset($_POST['ids'])){
	$tagid = $_POST['ids'];
	$result = $reps->view_return($tagid);
	if($result){
		echo json_encode($result);
	}
}
$reps->Disconnect();
 ?>

					