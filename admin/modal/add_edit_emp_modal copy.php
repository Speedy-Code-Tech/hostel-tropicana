
<div class="modal fade" id="modal-update-employee-form">
	<div class="modal-dialog">
		<div class="modal-content"  style="background-color: rgb(145, 191, 123); padding:10px;">
					<div class="container-fluid" style="background: rgb(255, 239, 218);">
						<div class="modal-header" style="border-bottom: 4px solid rgb(235, 205, 167);">
							<h4 class="modal-title"></h4>
						</div>
						<div class="modal-body">
							<!-- main form -->
								<form class="form-horizontal" role="form" id="update-employee-form">
									<input type="hidden" id="update-eided">
									<div class="form-group">
										<label class="control-label col-sm-3" for="fN-viewed">Account Name:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="fN-viewed"  autofocus>
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-sm-3" for="mN-viewed">Username:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="mN-viewed" >
										</div>
									</div>
<!-- 
									<div class="form-group">
										<label class="control-label col-sm-3" for="lN-viewed">Password:</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="lN-viewed">
										</div>
									</div> -->


									<div class="form-group">
										<label class="control-label col-sm-3" for="email-viewed">Email:</label>
										<div class="col-sm-9">
											<input type="email" name="email" class="form-control" id="email-viewed">
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-sm-3" for="offices-viewed">Office:</label>
										<div class="col-sm-9">
											<input type="text" name="office" class="form-control" id="offices-viewed" >
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="pos-viewed">Position:</label>
										<div class="col-sm-9">
											<input type="text" name="pos" class="form-control" id="pos-viewed">
										</div>
									</div>

									<div class="form-group"> 
										<div class="col-sm-offset-2 col-sm-10" style="display: flex; gap:30px;">
											<button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Cancel</button>
											<button type="submit" class="btn btn-success" value="addEmployee">Save</button>
										</div>
									</div>
								</form>
							<!-- /main form -->
						</div>
					</div>
		</div>
	</div>
</div>

