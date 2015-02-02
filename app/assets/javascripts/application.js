// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .


$(function() {

	$("#project-link").bind("click", function() {
		alert("projects");
		$("#projects").show();
		$("#about").hide();
		$("#home").hide();
	});

	$("#about-link").bind("click", function() {
		alert("about");
		$("#about").show();
		$("#projects").hide();
		$("#home").hide();

	});

	$("#home-link").bind("click", function() {
		alert("home");
		$("#home").show();
		$("#projects").hide();
		$("#about").hide();
	});

	$('.carousel').carousel({interval: 7000});

});