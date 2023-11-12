<?php 
require_once('../class/Equipment.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);

	
	$iN  = $data[0]; 		
	$sN  = $data[1];	
	$mN  = $data[2];	
	$b   = $data[3]; 			
	$a   = $data[4]; 			
	$iID = $data[5];
// return $iID;
	$result = $item->update_equipment($iN, $sN, $mN, $b, $a,$iID);
	if($result){
		$result['msg'] = 'Data Updated Successfully!';
		echo json_encode($result);
	}

}
$item->Disconnect();
 ?>

					