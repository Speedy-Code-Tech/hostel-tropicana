<?php 
require_once('../class/Item.php'); 
require_once('../class/Employee.php'); 

$employees = $employee->get_employees();
$categories = $item->item_categories();
$conditions = $item->item_conditions();

?>
<div class="modal fade" id="modal-update-item">
	<div class="modal-dialog">
	<div class="modal-content"  style="background-color: rgb(145, 191, 123); padding:10px;">
			<div class="container-fluid" style="background: rgb(255, 239, 218);">
				<div class="modal-header" style="border-bottom: 4px solid rgb(235, 205, 167);">
				<h4 class="modal-title">Update Item</h4>
			</div>
			<div class="modal-body">
				<!-- main form -->
				<form class="form-horizontal" role="form" id="update-item-formx">
					<input type="hidden" id="iIds1-update">
					<div class="form-group">
					    <label class="control-label col-sm-3" for="tagID-update">Tag Identification:</label>
					    <div class="col-sm-9">
						<input type="text" class="form-control" id="tagID-update" value="0" readonly>
						</div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="supplyname-update">Supply Name:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="supplyname-update" autofocus>
					    </div>
					  </div>

					  <div class="form-group" >
					    <label class="control-label col-sm-3" for="room-update">Room/Area:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="room-update" >
					    </div>
					  </div>

					   <div class="form-group">
					    <label class="control-label col-sm-3" for="brand-update">Brand:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="brand-update">
					    </div>
					  </div>
					
					  <div class="form-group" >
					    <label class="control-label col-sm-3" for="quantity-update">Quantity:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="quantity-update" value="0">
					    </div>
					  </div>

					 

					  <div class="form-group"> 
					    <div class="col-sm-offset-2 col-sm-10" style="display: flex; gap:30px;">
		<button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Cancel</button>

					      <button type="submit" id="btn-submits" value="add" class="btn btn-success">Save
					      
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
