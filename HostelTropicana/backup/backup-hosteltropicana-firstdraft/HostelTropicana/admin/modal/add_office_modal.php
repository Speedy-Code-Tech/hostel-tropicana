
<div class="modal fade" id="modal-add-equipment">
	<div class="modal-dialog">
	<div class="modal-content"  style="background-color: rgb(145, 191, 123); padding:10px;">
			<div class="container-fluid" style="background: rgb(255, 239, 218);">
				<div class="modal-header" style="border-bottom: 4px solid rgb(235, 205, 167);">
				<h4 class="modal-title">Add Equipment</h4>
			</div>
			<div class="modal-body">
				<!-- main form -->
					<form class="form-horizontal" role="form" id="add-equipment-form">
					<div class="form-group">
					    <label class="control-label col-sm-3" for="tagID-equipment">Tag Identification:</label>
					    <div class="col-sm-9">
						<input type="text" class="form-control" id="tagID-equipment">
						</div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="itemname-equipment">Item Name:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="itemname-equipment" autofocus>
					    </div>
					  </div>

					  <div class="form-group" >
					    <label class="control-label col-sm-3" for="room-equipment">Room/Area:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="room-equipment" >
					    </div>
					  </div>

					   <div class="form-group">
					    <label class="control-label col-sm-3" for="brand-equipment">Brand:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="brand-equipment">
					    </div>
					  </div>
					
					  <div class="form-group" >
					    <label class="control-label col-sm-3" for="quantity-equipment">Quantity:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="quantity-equipment" >
					    </div>
					  </div>

					 

					  <div class="form-group"> 
					    <div class="col-sm-offset-2 col-sm-10" style="display:flex;gap:30px;">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Cancel</button>

					      <button type="submit" id="btn-submit-equipment" value="add" class="btn btn-success">Save
					    
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
