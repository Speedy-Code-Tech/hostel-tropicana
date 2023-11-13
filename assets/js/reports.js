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

function return_report(tagid,realId){

    
	$.ajax({
		url: '../data/returns.php',
        type: 'post',
        dataType: 'json',
        data: {
        
            ids 			: tagid,
            myId: realId
        },
		success:function(data){
			console.log("The Data Is ",data);
			$('#modal-returns').modal('show');
            $('#view-items').text(data.item);
            $('#date_borrowed').val(data.date_borrowed);
            $('#tag_id').val(data.tagid);
            $('#view-quans').text("("+data.quantity+")");
			$('#category').val(data.category);
			$('#view-quan').val(data.quantity);
			$('#view-item').val(data.item);
			$('#uniqueId').val(data.id);
			$("#set-quan").attr({
                "max" : data.quantity,        // substitute your own
                "min" : 0          // values (or variables) here
             });
		},
		error:(data)=>{
			console.log(data)
		}
	})
}


$(document).on('submit', '#modal-returns', function(event) {
	event.preventDefault();

    /* Act on the event */
	var validate = 0;
	var form_datas = new Array(
                    $('input[id=tag_id]'),
                    $('#view-item'),
                    $('#date_borrowed'),
                    $('#view-quan'),
                    $('#set-quan'),
                    $('#category'),
                    $('#uniqueId'),

                 		);
                            var data = new Array(form_datas.length);
                            for(var i = 0; i < form_datas.length; i++){
                                if(form_datas[i].val() == 0){
                                    form_datas[i].parent().parent().addClass('has-error');
                                }else{
                                    form_datas[i].parent().parent().removeClass('has-error');
                                    data[i] = form_datas[i].val();
                                    validate += i;
                                }
                            }
                        
		

	if(validate!=0){
       console.log(data)
            $.ajax({
                url: '../data/returnings.php',
                type: 'post',
                dataType: 'json',
                data: {
                    data: JSON.stringify(data)
                },
                success: function(event){console.log(event)
					$('#modal-returns').modal('hide');
					show_report();
					
                },
                error: (err)=>{
					console.log(err);
                //     // alert("Error Updating Value");
                //     $('#modal-update-equipment').modal('hide');
						
                //         // action = event.action;
                //         show_all_equipment();
                // }
				}
            });//end a
	}//end valdidate
   
	
});


$(document).on('submit', '#date-sorts', function(event) {
	event.preventDefault();

    let fromDate = $("#From").val()
    let toDate = $("#To").val()
   

            $.ajax({
                url: '../data/show_report.php',
                type: 'post',
                data: {
                    // datas: JSON.stringify(data)
                    fromDates:fromDate,
                    toDates:toDate
                },
                success: function(event){
                    console.log("Date Sorted", event)
                    $('#show-report').html(event);
					
                },
                error: (err)=>{
					console.log("Error",err);
              
				}
            });
    

});


function changeRoom(){
    let room = $("#room-change").val()
    console.log(room) 
    $("#room").val(room)
}

function changeRoomEquipement(){
    let room = $("#room-change-equipement").val()
    console.log(room) 
    $("#room-equipment").val(room)
}

function changeRoomTools(){
    let room = $("#room-change-tools").val()
    console.log(room) 
    $("#room-tools").val(room)
}




