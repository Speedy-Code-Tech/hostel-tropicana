<div class="modal fade" id="modal-changepasss">
	<div class="modal-dialog">
		<div class="modal-content" style="background-color: rgb(145, 191, 123); padding:10px;">
			<div class="container-fluid" style="background: rgb(255, 239, 218);">
			<div class="modal-header" style="border-bottom: 4px solid rgb(235, 205, 167);">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Change Password</h4>
			</div>
			<div class="modal-body">
				<!-- form -->
				<form class="form-horizontal" role="form" id="form-changepasswords">
				<center>
					<strong id="changepass-msg" class="text-danger"></strong>
				</center>
				<input type="hidden" id="user-id">
				  <div class="form-group">
				    <label class="control-label col-sm-2" for="change-username">Username:</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="change-username" >
				    </div>
				  </div>

				  <div class="form-group">
				    <label class="control-label col-sm-2" for="change-password">Password:</label>
				    <div class="col-sm-10"> 
				      <input type="password" class="form-control" id="change-password">
				    </div>
				  </div>

				   <div class="form-group">
				    <label class="control-label col-sm-2" for="confirm-password">Confirm:</label>
				    <div class="col-sm-10"> 
				      <input type="password" class="form-control" id="confirm-password" >
				    </div>
				  </div>

				  <div class="form-group"> 
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-success">Save
				      <span class="glyphicon glyphicon-check" aria-hidden="true"></span>
				      </button>
				    </div>
				  </div>

				</form>
				<!--end  form -->
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>
</div>
 
<style> 

</style>