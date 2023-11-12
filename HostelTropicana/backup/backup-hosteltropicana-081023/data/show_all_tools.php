<?php 
require_once('../class/Tools.php'); 
$allItems = $item->get_all_tools();
// echo '<pre>';
// 	print_r($allItem);
// echo '</pre>';
?>

<br />
<table id="myTabled" class="table table-bordered table-hover" cellspacing="0" width="100%">
	<thead>
	    <tr>
	        <th>Tag Identification</th>
	        <th>Tool Name</th>
	        <th>Room/Area</th>
	        <th>Quantity</th>
	        <th><center>Action</center></th>
	    </tr>
	</thead>
    <tbody>
		<?php 
			foreach ($allItems as $i) {
				# code...
				$fN = $i['tagid'];
				$mN = $i['toolname'];
				$mN = $i['room'];
				$last=$i['quantity'];
		?>
			<tr>
				<td ><?php echo $i['tagid']; ?></td>
				<td ><?php echo $i['toolname']; ?></td>
				<td ><?php echo $i['room']; ?></td>
				<td ><?php echo $i['quantity']; ?></td>
				<td align="center">
					<button onclick="fill_update_modals('<?php echo $i['id']; ?>');" class="btn btn-warning btn-sm"
					id="btn-edit">
					<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
					Edit
					</button>
					<button class="btn btn-danger btn-sm" onclick="delete_tools('<?php echo $i['id']; ?>');">
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
					Delete
					</button>
					<button class="btn btn-success btn-sm" onclick="borrow_tools('<?php echo $i['id']; ?>');">
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
		$('#myTabled').DataTable();
	});




</script>
