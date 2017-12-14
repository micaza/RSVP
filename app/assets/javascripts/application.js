// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require bootstrap-sprockets
//= require turbolinks
//= require jquery.maskedinput.min
//= require_tree .
$(document).ready(function(){
	$("#phone").mask("(999) 999-9999");
	if( $('input[id=rsvp_will_attend_true]:checked').val() ) {
		$('.not-attending').show();
		$('#yes').addClass('active');
		$('#no').removeClass('active');
	} else {
		$('.not-attending').hide();
		$('#no').addClass('active');
		$('#yes').removeClass('active');
	}
	console.log($('input[id=rsvp_will_attend_true]:checked').val());
	$('form input').on('change', function() {
		if( $('input[id=rsvp_will_attend_true]:checked').val() ) {
			$('.not-attending').show();
		} else {
			$('.not-attending').hide();
		}
	});

});