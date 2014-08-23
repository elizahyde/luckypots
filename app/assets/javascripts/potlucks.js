// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
	// Hide New Potluck form on page load
	$('#potluckForm').hide();
	$('#newPotluck').click(function() {
		$('#newPotluck').hide();
		$('#potluckForm').fadeIn(600)();


	var refresh_items_table = function(){
    $.ajax({
      dataType: "script",
      type: "get",
      url: "/potlucks/refresh_items"
    });
  };

  $("#refresh_items").on('click', refresh_items_table);


	})
});