<?php 
require_once('../class/Item.php'); 
require_once('../class/Employee.php'); 

$employees = $employee->get_employees();
$categories = $item->item_categories();
$conditions = $item->item_conditions();

$room = $item->room();

?>
<div class="modal fade" id="modal-update-equipment">
	<div class="modal-dialog">
		<div class="modal-content"  style="background-color: rgb(145, 191, 123); padding:10px;">
			<div class="container-fluid" style="background: rgb(255, 239, 218);">
				<div class="modal-header" style="border-bottom: 4px solid rgb(235, 205, 167);">
					<h4 class="modal-title">Update Equipment</h4>
				</div>
				<div class="modal-body">
					<!-- main form -->
					<form class="form-horizontal" role="form" id="update-equipment-formx">
						<input type="hidden" id="iIds1-equipment-update">
							<div class="form-group">
								<label class="control-label col-sm-3" for="tagID-equipment-update">Tag Identification:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="tagID-equipment-update" value="0" readonly>
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-sm-3" for="itemsname-equipment-update">Supply Name:</label>
									<div class="col-sm-9">
									<input type="text" class="form-control" id="itemsname-equipment-update"  autofocus>
									</div>
							</div>

							<div class="form-group" >
									<label class="control-label col-sm-3" for="room-equipment-update">Room/Area:</label>
									<div class="col-sm-9"> 
									<select name="room" id="room-update-equiptment" class="form-control" onchange="updateEquipt()">
										<option value="null" >Select Room</option>
										<?php foreach($room as $r){?>
											<option value="<?php echo $r['name']?>" ><?php echo $r['name']?></option>


										<?php }?>
									</select>
									<input type="hidden" class="form-control" id="room-equipment-update" >
									</div>
							</div>

							<div class="form-group">
									<label class="control-label col-sm-3" for="brand-equipment-update">Brand:</label>
									<div class="col-sm-9"> 
									<input type="text" class="form-control" id="brand-equipment-update" >
									</div>
							</div>
						
							<div class="form-group" >
									<label class="control-label col-sm-3" for="quantity-equipment-update">Quantity:</label>
									<div class="col-sm-9"> 
									<input type="text" class="form-control" id="quantity-equipment-update" value="0">
									</div>
							</div>
							<div class="form-group"> 
								<div class="col-sm-offset-2 col-sm-10" style="display: flex; gap:30px;">
									<button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Cancel</button>
									<button type="submit" id="btn-submits-equipment" value="add" class="btn btn-success">Save</button>
								</div>
							</div>
					</form>
					<!-- /main form -->
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	function updateEquipt(){
    let room = $("#room-update-equiptment").val()
    console.log(room) 
    $("#room-equipment-update").val(room)
}

</script>