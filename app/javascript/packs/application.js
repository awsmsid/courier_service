// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import 'bootstrap'
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


import $ from 'jquery';
global.$ = jQuery;

// $( document ).ready(function() {
// 	$('#search_order').on('click', function(){
// 		debugger
// 		$.ajax({
// 			url: "donor_reports/get_giving_by_location",
// 			type: 'GET',
// 			dataType: 'script',
// 			data: { timeframe: timeframe, start_date: start_date, end_date: end_date}
// 		});
// 	})

// 	 $("form.edit_todo").on("submit", function (e) {
// 	   debugger
// 	   e.preventDefault();
// 	   return false;
// 	  })
// })