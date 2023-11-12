<?php 
require_once('../class/Report.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);
  
    $tag_id = $data[0];
    $item = $data[1];
    $borrowed = $data[2];
    $quan = $data[3];
    $setQuan = $data[4];
    $category = $data[5];
    $myId = $data[6];
	$result = $reps->return_return($tag_id,$item,$borrowed,$quan,$setQuan,$category,$myId);


	if($result){
		echo json_encode($result);
	}
}
$reps->Disconnect();
 ?>

					