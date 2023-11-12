<?php 
require_once('../class/Employee.php'); 
$employees = $employee->get_employees();
// echo '<pre>';
// 	print_r($employees);
// echo '</pre>';
?>

<br />
<table id="myTable-employee" class="table table-bordered" cellspacing="0" width="100%">
	<thead>
	    <tr>
	        <th>Account Name</th>
	        <th>Position</th>
	        <th>Office</th>
	        <th><center>Action</center></th>
	    </tr>
	</thead>
    <tbody>
		<?php 
			foreach ($employees as $emp) {
				$mN = $emp['accountname'];
				$pos = $emp['position'];
				$off = $emp['office'];
			
				$id = $emp['emp_id'];
		?>
			<tr>
				<td><?php echo $mN ?></td>
				<td><?php echo $pos ?></td>
				<td><?php echo $off ?></td>
				<td align="center" width="180px">
						<button type="button" onclick="edit_employee_fill('<?php echo $id; ?>');" class="btn btn-warning btn-xs"  >
							<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
							Edit</button>
			
							<button type="button" class="btn btn-danger btn-xs" onclick="employee_remove_undo('<?php echo $id; ?>')">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
							Delete</button>
				
					
				</td>
			</tr>
		<?php
			}//end foreach employees
		 ?>
    </tbody>
</table>


<?php 
// $db->Disconnect();
 ?>

<!-- for the datatable of employee -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable-employee').DataTable();
	});
</script>
