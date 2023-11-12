<?php 
require_once('../class/Tools.php');

if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);

	$iN = $data[0];//TAGID
	$sN = $data[1];//TOOLNAME
	$mN = $data[2];//ROOM
	$b = $data[3];//QUANTITY
	


	// $result = $item->insert_item($iN, $sN, $mN, $b, $a, $pD, $eID, $cID, $coID);
	$results = $item->insert_tools($iN, $sN, $mN, $b);
	$borrowed =$item->insert_borrow($sN,'','','','','',$b,'Tools',$iN,$mN,'');
	if($results){
		$result['msg'] = "Tool Added Successfully!";
		$result['action'] = "Add Data";
		echo json_encode($result);
	}
	// echo $result;
}

$item->Disconnect();
 ?>

