<?php 
require_once('../class/Item.php'); 
require_once('../class/Employee.php'); 

$employees = $employee->get_employees();
$categories = $item->item_categories();
$conditions = $item->item_conditions();

?>
<div class="modal fade" id="modal-borrow-equipment">
	<div class="modal-dialog">
	<div class="modal-content"  style="background-color: rgb(145, 191, 123); padding:10px;">
			<div class="container-fluid" style="background: rgb(255, 239, 218);">
				<div class="modal-header" style="border-bottom: 4px solid rgb(235, 205, 167);">
				<h4 class="modal-title">Borrowing Details</h4>
			</div>
			<div class="modal-body">
				<!-- main form -->
					<form class="form-horizontal" role="form" id="borrow-equipment-form">
					<input type="hidden" name="borrow-category" id="borrow-equipment-category" value="Equipment">
					<input type="hidden" id="borrow-tagid-equip">
					<input type="hidden" id="borrow-room-equip">
	
					<div class="form-group">
					<input type="hidden" id="quantity-equipments">
					    <label class="control-label col-sm-3" for="borrow-equipment-item">Item:</label>
					    <div class="col-sm-9">
						<input type="text" class="form-control" id="borrow-equipment-item">
						</div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="borrow-equipment-name">Name:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="borrow-equipment-name" autofocus>
					    </div>
					  </div>

					  <div class="form-group" >
					    <label class="control-label col-sm-3" for="borrow-equipment-date">Date Borrowed:</label>
					    <div class="col-sm-9"> 
					      <input type="date" class="form-control" id="borrow-equipment-date">
					    </div>
					  </div>

					   <div class="form-group">
					    <label class="control-label col-sm-3" for="borrow-equipment-contact">Contact Number:</label>
					    <div class="col-sm-9"> 
					      <input type="number" class="form-control" id="borrow-equipment-contact">
					    </div>
					  </div>
					
					  <div class="form-group" >
					    <label class="control-label col-sm-3" for="borrow-equipment-where">Where will be used:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="borrow-equipment-where">
					    </div>
					  </div>
                      <div class="form-group" >
					    <label class="control-label col-sm-3" for="borrow-equipment-return">Return date:</label>
					    <div class="col-sm-9"> 
					      <input type="date" class="form-control" id="borrow-equipment-return">
					    </div>
					  </div>
                      <div class="form-group" >
					    <label class="control-label col-sm-3" for="borrow-equipment-quantity">Quantity:</label>
					    <div class="col-sm-9"> 
					      <input type="number" class="form-control" id="borrow-equipment-quantity">
					    </div>
					  </div>
					 

					  <div class="form-group"> 
					    <div class="col-sm-offset-2 col-sm-10" style="display:flex; gap:30px;">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Cancel</button>

					      <button type="submit" id="btn-submit" value="add" class="btn btn-success">Save
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
