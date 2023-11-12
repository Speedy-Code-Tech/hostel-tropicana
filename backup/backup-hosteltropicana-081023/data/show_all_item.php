<?php 
require_once('../class/Item.php'); 
$allItem = $item->get_all_items();
// echo '<pre>';
// 	print_r($allItem);
// echo '</pre>';
?>

<br />
<table id="myTable" class="table table-bordered" cellspacing="0" width="100%">
	<thead>
	    <tr>
	        <th>Tag Identification</th>
	        <th>Supply Name</th>
	        <th>Room/Area</th>
	        <th>Brand</th>
	        <th>Quantity</th>
	        <th><center>Action</center></th>
	    </tr>
	</thead>
    <tbody>
		<?php 
			foreach ($allItem as $i) {
				# code...
				$fN = $i['tagid'];
				$mN = $i['supplyname'];
				$mN = $i['room'];
				$lN = $i['brand'];
				$last=$i['quantity'];
		?>
			<tr>
				<td ><?php echo $i['tagid']; ?></td>
				<td ><?php echo $i['supplyname']; ?></td>
				<td ><?php echo $i['room']; ?></td>
				<td ><?php echo $i['brand']; ?></td>
				<td ><?php echo $i['quantity']; ?></td>
				<td align="center">
					<button onclick="fill_update_modal('<?php echo $i['id']; ?>');" class="btn btn-warning btn-sm"
					id="btn-edit">
					<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
					Edit
					</button>
					<button class="btn btn-danger btn-sm" onclick="delete_items('<?php echo $i['id']; ?>');">
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
					Delete
					</button>
					<button class="btn btn-success btn-sm" onclick="borrow_items('<?php echo $i['id']; ?>');">
					<span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span>
					Borrow
					</button>
				</td>
			</tr>
		<?php		
			}//end foreach
		 ?>
    </tbody>
</table>


<?php 
$item->Disconnect();
 ?>

<!-- for the datatable of item -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable').DataTable();
	});




</script>
