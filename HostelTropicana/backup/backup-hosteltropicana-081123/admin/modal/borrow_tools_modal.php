
<div class="modal fade" id="modal-borrow-tools">
	<div class="modal-dialog">
	<div class="modal-content"  style="background-color: rgb(145, 191, 123); padding:10px;">
			<div class="container-fluid" style="background: rgb(255, 239, 218);">
				<div class="modal-header" style="border-bottom: 4px solid rgb(235, 205, 167);">
				<h4 class="modal-title">Borrowing Details</h4>
			</div>
			<div class="modal-body">
				<!-- main form -->
					<form class="form-horizontal" role="form" id="borrow-tool-form">
					<input type="hidden" id="borrow-tool-category" value="Tools">
					<input type="hidden" id="borrow-tagid-tool">
					<input type="hidden" id="borrow-room-tool">
					<input type="hidden" id="toolquantity">
					<div class="form-group">
					    <label class="control-label col-sm-3" for="borrow-tool-item">Item:</label>
					    <div class="col-sm-9">
						<input type="text" class="form-control" id="borrow-tool-item">
						</div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="borrow-tool-name">Name:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="borrow-tool-name" autofocus>
					    </div>
					  </div>

					  <div class="form-group" >
					    <label class="control-label col-sm-3" for="borrow-tool-date">Date Borrowed:</label>
					    <div class="col-sm-9"> 
					      <input type="date" class="form-control" id="borrow-tool-date">
					    </div>
					  </div>

					   <div class="form-group">
					    <label class="control-label col-sm-3" for="borrow-tool-contact">Contact Number:</label>
					    <div class="col-sm-9"> 
					      <input type="number" class="form-control" id="borrow-tool-contact">
					    </div>
					  </div>
					
					  <div class="form-group" >
					    <label class="control-label col-sm-3" for="borrow-tool-where">Where will be used:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="borrow-tool-where">
					    </div>
					  </div>
                      <div class="form-group" >
					    <label class="control-label col-sm-3" for="borrow-tool-return">Return date:</label>
					    <div class="col-sm-9"> 
					      <input type="date" class="form-control" id="borrow-tool-return">
					    </div>
					  </div>
                      <div class="form-group" >
					    <label class="control-label col-sm-3" for="borrow-tool-quantity">Quantity:</label>
					    <div class="col-sm-9"> 
					      <input type="number" class="form-control" id="borrow-tool-quantity">
					    </div>
					  </div>
					 

					  <div class="form-group"> 
					    <div class="col-sm-offset-2 col-sm-10" style="display: flex; gap:30px;">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Cancel</button>
					      
						<button type="submit" id="btn-submited" value="add" class="btn btn-success">Save
					     
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
