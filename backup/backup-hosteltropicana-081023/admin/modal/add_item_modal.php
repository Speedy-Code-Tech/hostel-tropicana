<?php 
require_once('../class/Item.php'); 
require_once('../class/Employee.php'); 

$employees = $employee->get_employees();
$categories = $item->item_categories();
$conditions = $item->item_conditions();

?>
<div class="modal fade" id="modal-add-item">
	<div class="modal-dialog">
		<div class="modal-content"  style="background-color: rgb(145, 191, 123); padding:10px;">
			<div class="container-fluid" style="background: rgb(255, 239, 218);">
				<div class="modal-header" style="border-bottom: 4px solid rgb(235, 205, 167);">
					<h4 class="modal-title">Add Item</h4>
				</div>
				<div class="modal-body">
					<!-- main form -->
						<form class="form-horizontal" role="form" id="add-item-form">
							<div class="form-group">
								<label class="control-label col-sm-3" for="tagID">Tag Identification:</label>
								<div class="col-sm-9">
								<input type="text" class="form-control" id="tagID">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-sm-3" for="supplyname">Supply Name:</label>
								<div class="col-sm-9">
								<input type="text" class="form-control" id="supplyname" autofocus>
								</div>
							</div>

							<div class="form-group" >
								<label class="control-label col-sm-3" for="room">Room/Area:</label>
								<div class="col-sm-9"> 
								<input type="text" class="form-control" id="room" >
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-sm-3" for="brand">Brand:</label>
								<div class="col-sm-9"> 
								<input type="text" class="form-control" id="brand">
								</div>
							</div>
							
							<div class="form-group" >
								<label class="control-label col-sm-3" for="quantity">Quantity:</label>
								<div class="col-sm-9"> 
								<input type="text" class="form-control" id="quantity" >
								</div>
							</div>
							<div class="form-group"> 
								<div class="col-sm-offset-2 col-sm-10" style="display: flex; gap:30px;">
									<button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Cancel</button>
									<button type="submit" id="btn-submit" value="add" class="btn btn-success">Save
										<span class="glyphicon glyphicon-saved" aria-hidden="true"></span>
									</button>
								</div>
							</div>
						</form>
					<!-- /main form -->
				</div>
			</div>
		</div>
	</div>
</div>
