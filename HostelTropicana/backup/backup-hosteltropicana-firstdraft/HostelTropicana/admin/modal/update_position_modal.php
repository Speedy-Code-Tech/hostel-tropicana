<div class="modal fade" id="modal-upt-position">
	<div class="modal-dialog">
	<div class="modal-content"  style="background-color: rgb(145, 191, 123); padding:10px;">
			<div class="container-fluid" style="background: rgb(255, 239, 218);">
				<div class="modal-header" style="border-bottom: 4px solid rgb(235, 205, 167);">
				<h4 class="modal-title">Update Position</h4>
			</div>
			<div class="modal-body">
				<!-- main form -->
					<form class="form-horizontal" role="form" id="upt-position-form">
					<input type="hidden" id="upt-pos-id">
					<div class="form-group">
					    <label class="control-label col-sm-3" for="tagID-tools-update">Tag Identification:</label>
					    <div class="col-sm-9">
						<input type="text" class="form-control" id="tagID-tools-update">
						</div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="toolname-update">Tool Name:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="toolname-update"  autofocus>
					    </div>
					  </div>

					  <div class="form-group" >
					    <label class="control-label col-sm-3" for="room-tools-update">Room/Area:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="room-tools-update">
					    </div>
					  </div>
					  <div class="form-group" >
					    <label class="control-label col-sm-3" for="quantity-tools-update">Quantity:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="quantity-tools-update" >
					    </div>
					  </div>
					  <div class="container" style="display:flex; gap:30px;">
					  <button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Cancel</button>

<button type="submit" class="btn btn-success">Save</button></div>
					</form>
				<!-- /main form -->
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>