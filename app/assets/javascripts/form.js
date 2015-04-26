$(document).ready(function() {
	
	$("#button").click(function() {
		$("#input-container").slideUp();
		$("#button").html("Trip Created!");
		$("#form-container").css("background-color", "white");
	});
});