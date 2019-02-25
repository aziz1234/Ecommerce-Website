$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	
	/*$('#password, #confirm-password').on('keyup', function () {
		  if ($('#password').val() == $('#confirm-password').val()) {
		    $('#message').html('Matching').css('color', 'green');
		  } else 
		    $('#message').html('Not Matching').css('color', 'red');
		}); */
	
	$(document).ready(function() {
	    function disableBack() { window.history.forward() }

	    window.onload = disableBack();
	    window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
	});
});
