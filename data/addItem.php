<?php 
require_once('../class/Item.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);

	$iN = $data[0];
	$sN = $data[1];
	$mN = $data[2];
	$b = $data[3];
	$a = $data[4];


	// $result = $item->insert_item($iN, $sN, $mN, $b, $a, $pD, $eID, $cID, $coID);
	$results = $item->insert_item($iN, $sN, $mN, $b, $a);
	$borrowed =$item->insert_borrow($sN,'','','','','',$a,'Supplies',$iN,$mN,'');
	if($results){
		$result['msg'] = "Item Added Successfully!";
		$result['action'] = "Add Data";
		echo json_encode($result);
	}
	// echo $result;
}

$item->Disconnect();
 ?>

