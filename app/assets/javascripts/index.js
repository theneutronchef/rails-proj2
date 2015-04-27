$(document).ready(function() {
	$("#make-a-trip").hover(function() {
		$("#make-a-trip").removeClass('original');
        $('#make-a-trip').addClass('make-a-trip-adders');
    }, function() {
 		$("#make-a-trip").addClass('original');
        $('#make-a-trip').removeClass('make-a-trip-adders');
	});
});