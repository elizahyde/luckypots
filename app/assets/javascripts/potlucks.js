$(document).ready(function(){
	// Hide New Potluck form on page load
	$('#potluckForm').hide();

	// When clicking to make new potluck
	$('#newPotluck').click(function() {
		$('#photoBlock').slideUp();
		$('#newPotluck').hide();
		$('#potluckForm').fadeIn();
	});


// Hack way of showing new items. It is all an optical illusion...
var items = [];

$('#refresh_items').click(function() {
	var newItem = $('#item_name').val();
	items.push(newItem);

	$('#items_table tr:last').after('<tr><td>'+ newItem + '</td><td></td></tr>');
	$(this).closest('form').find("input[type=text]").val("");

});



});