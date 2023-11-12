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

function deleteAllReport(){
	
	$('#modal-deletes-report').modal('show');
}
function canceldeleteAllReport(){
	$('#modal-deletes-report').modal('hide');
}

function confdelete(){

	let value =	$('#confirm-delete').val()
	if(value==="CONFIRM"){
            $.ajax({
                url: '../data/borrowedItem.php',
                type: 'post',
                dataType: 'json',
                data: {
                    deletes: "DATA"
                },
                success: function(event){
                    if(event.valid == valid){
						$('#modal-deletes-report').modal('hide');
                        show_report()
                    }
                },
                error: ()=>{
                    // alert("Error Updating Value");
                    $('#modal-deletes-report').modal('hide');
                        // action = event.action;
                        show_report()
                }
            });//end a
	}else{
		alert("Error Deleting Reports");
	}
	
	
};//end submit $update-item-form


