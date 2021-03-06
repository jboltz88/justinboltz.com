// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

var blocmetrics = {};
blocmetrics.report = function(eventName) {
   var event = {event: { name: eventName }};
   var request = new XMLHttpRequest();
   request.open("POST", "http://blocmetrics-boltz.herokuapp.com/api/v1/events", true);
   request.setRequestHeader('Content-Type', 'application/json');
   request.send(JSON.stringify(event));
};

$(document).on('turbolinks:load', function() {
  blocmetrics.report("page load");
  $('.post-link').on('click', function() {
    blocmetrics.report("post link")
  });
  $('.glyphicon-download-alt').on('click',function() {
    blocmetrics.report("resume download")
  });
  $('.social').on('click',function() {
    blocmetrics.report("social link")
  });
});
