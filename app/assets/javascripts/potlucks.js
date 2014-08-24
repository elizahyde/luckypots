// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
	// Hide New Potluck form on page load
	$('#potluckForm').hide();

	// When clicking to make new potluck
	$('#newPotluck').click(function() {
		$('#photoBlock').slideUp();
		$('#newPotluck').hide();
		$('#potluckForm').fadeIn();
	});

	// // When clicking to save new potluck
	// $('#submitPotluck').click(function() {
	// 	$('#potluckForm').fadeout(600)();
	// 	$('#photoBlock').slideDown();
	// 	$('#newPotluck').show();
	// });



	var refresh_items_table = function(){
    $.ajax({
      dataType: "script",
      type: "get",
      url: "/potlucks/refresh_items"
    });
  };

  $("#refresh_items").on('click', refresh_items_table);


});