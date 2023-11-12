<?php 
require_once('../class/Employee.php'); 

$positions = $employee->employee_positions();
$offices = $employee->employee_offices();
$account_types = $employee->employee_account_types();

?>
<div class="modal fade" id="modal-add-employee">
	<div class="modal-dialog">
	<div class="modal-content"  style="background-color: rgb(145, 191, 123); padding:10px;">
			<div class="container-fluid" style="background: rgb(255, 239, 218);">
				<div class="modal-header" style="border-bottom: 4px solid rgb(235, 205, 167);">
					<h4 class="modal-title">Add Employee</h4>
				</div>
				<div class="modal-body">
					<!-- main form -->
					
						<form class="form-horizontal" role="form" id="add-employee-form">

						<div class="form-group">
							<label class="control-label col-sm-3" for="fN">Account Name:</label>
							<div class="col-sm-9">
							<input type="text" class="form-control" id="fN" autofocus>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3" for="mN">Username:</label>
							<div class="col-sm-9">
							<input type="text" class="form-control" id="mN" >
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3" for="lN">Password:</label>
							<div class="col-sm-9">
							<input type="password" class="form-control" id="lN">
							</div>
						</div>


						<div class="form-group">
							<label class="control-label col-sm-3" for="email">Email:</label>
							<div class="col-sm-9">
							<input type="email" name="email" class="form-control" id="email" >
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3" for="office">Office:</label>
							<div class="col-sm-9">
							<input type="text" name="office" class="form-control" id="offices" >
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3" for="pos">Position:</label>
							<div class="col-sm-9">
							<input type="text" name="pos" class="form-control" id="pos" >
							</div>
						</div>


						

						<div class="form-group"> 
							<div class="col-sm-offset-2 col-sm-10">
							<div class="container" style="display: flex; gap:30px;">
							<button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Cancel</button>
							<button type="submit" class="btn btn-success" value="addEmployee">Save
				
							</button>	
						</div>  
							
							</div>
						</div>
						</form>
					<!-- /main form -->
				</div>
			</div>
		</div>
	</div>
</div>
