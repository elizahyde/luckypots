$(document).ready(function(){
	$('#itemForm').hide();

	$('#newItem').click(function() {
		$('#peopleBlock').slideUp();
		$('#itemForm').fadeIn(600);
		$('#newItem').hide();

	})
});