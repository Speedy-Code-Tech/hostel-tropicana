<?php 
require_once('../class/Tools.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);

	
	$iN  = $data[0]; 		
	$sN  = $data[1];	
	$mN  = $data[2];	
	$b   = $data[3]; 
	$id = $data[4];			
	$updated = $data[5];			

// return $iID;
	$resulta = $item->update_tool($iN,$id);
	if($resulta){
		$result = $item->update_tools($iN, $sN, $mN, $b,$id);
	if($result){
		$result['msg'] = 'Data Updated Successfully!';
		echo json_encode($result);
	}
	}

}
$item->Disconnect();
 ?>

					