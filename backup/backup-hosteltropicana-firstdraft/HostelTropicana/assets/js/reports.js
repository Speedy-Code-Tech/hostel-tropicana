function fill_views_report(id){

	$.ajax({
		url: '../data/reportlist.php',
		type: 'post',
		dataType: 'json',
		data: { iID: id},
		success: function (data) {
			
			$('#tagborrowID').val(data.tagid)//iID
			$('#tagborrowname').val(data.item)
			$('#tagname').val(data.name)
			$('#tagBdate').val(data.date_borrowed)
			$('#tagRdate').val(data.returndate)
			$('#tagcontact').val(data.contactno)
			$('#tagroom').val(data.room)
			$('#tagquantity').val(data.quantity)
			$('#tagcategory').val(data.category)
			$('#tagwhere').val(data.whereplace)
			
		   
			// console.log(data)
			$('#modal-views-borrow').modal('show');
		},
		error: function (){
			alert('Error: fill_update_modal L172+');
		}
	});
}