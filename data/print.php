<!DOCTYPE html>
<html lang="en">
<?php 
require_once('../class/Item.php');
if(isset($_GET['choice'])){
    $choice = $_GET['choice'];

    $reports = $item->item_report($choice);
    // echo '<pre>';
    //  print_r($reports);
    // echo '</pre>';

?>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>DepEd Inventory System</title>

    <!-- Bootstrap Core CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-theme.min.css">
    <link href="../assets/css/dataTables.bootstrap.min.css" rel="stylesheet">


</head>
<body>


<center>
<div style="width: 100%; text-align: center;">
<img src="../img/hotel.png" alt="" style="width:200px;"></div>
    <h2>HOSTEL TROPICANA INVENTORY</h2>
    <h3><?= date('m-d-Y'); ?></h3>
</center>

<br />
<div class="table-responsive">
       <table id="myTable-report" class="table table-bordered table-hover" cellspacing="0" width="100%">
       <thead>
	    <tr>
	        <th>Tag ID</th>
	        <th>Name</th>
	        <th>Category</th>
	        <th>Room</th>
	        <th>Quantity</th>
			<th>Item Created</th>
	    </tr>
	</thead>
    <tbody>
    	<?php foreach($reports as $r): 
    		
    	?>
    		<tr>
    			<td><?= $r['tagid']; ?></td>
    			<td><?= $r['item'] ?></td>
    			<td><?= $r['category']; ?></td>
    			<td><?= $r['room']; ?></td>
    			<td><?= $r['quantity' ]; ?> <?= $r['status']; ?></td>
				<td><?= $r['item_created']; ?></td>
    		</tr>
    	<?php endforeach; ?>
    </tbody>

</table>
</div>


    <script type="text/javascript">
        print();
    </script>
</body>
</html>

<?php

    // echo $choice;
}//end isset


