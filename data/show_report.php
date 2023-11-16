<?php 
require_once('../class/Item.php');
require_once('../class/Report.php');

$reports = "";
if(isset($_POST['status'])){
	$choice = $_POST['choice'];
	$fromDate =$_POST['fromDates'];//$data[0];//From
	$toDate = $_POST['toDates'];//$data[1];//To
	$reports = $item->sorted_with_time_choices($choice,$fromDate,$toDate);


}
	else if(isset($_POST['fromDates']) && isset($_POST['toDates']) && isset($_POST['choice'])){
		$choice = $_POST['choice'];
		$fromDate =$_POST['fromDates'];//$data[0];//From
		$toDate = $_POST['toDates'];//$data[1];//To
		$reports = $item->sorted_with_time_choices($choice,$fromDate,$toDate);
	

	}
	else if(isset($_POST['choice'])){
		$choice = $_POST['choice'];
	
		$reports = $item->item_report($choice);
	
	}
	

?>


<br />
<br />
<table id="myTable-report" class="table table-bordered table-hover" cellspacing="0" width="100%">
	<thead>
	    <tr>
	        <th>Tag ID</th>
	        <th>Name</th>
	        <th>Category</th>
	        <th>Room</th>
	        <th>Quantity</th>
	        <th>Date Created</th>
	        <th>Status</th>
	    </tr>
	</thead>
    <tbody>
    	<?php if($reports){ foreach($reports as $r): 
    		
    	?>
    		<tr>
    			<td><?= $r['tagid']; ?></td>
    			<td><?= $r['item'] ?></td>
    			<td><?= $r['category']; ?></td>
    			<td><?= $r['room']; ?></td>
    			<td><?= $r['quantity']; ?> <?= $r['status']; ?></td>
    			<td><?= $r['item_created']; ?></td>
				<td style="text-align: center;">
    			<?php if($r['status']=='Borrowed'){?>
				
					<button class="btn btn-sm btn-success" onclick="fill_views_report('<?= $r['id'];?>')">Details</button>
					<button class="btn btn-sm btn-warning" onclick="return_report('<?= $r['tagid'];?>','<?= $r['id'];?>')">Return</button>

				<?php } ?>
				</td>
    		</tr>
    	<?php endforeach; }?>
    </tbody>
</table>


<?php 
// $db->Disconnect();
 ?>

<!-- for the datatable of employee -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable-report').DataTable();
	});
</script>

