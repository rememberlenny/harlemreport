# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https:#github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery_2
#= require jquery_ujs
#= require foundation
#= require jquery.turbolinks
#= require turbolinks
#= require nprogress
#= require nprogress-turbolinks
#= require rails_confirm_dialog
#= require jquery.scrollto
#= require refile
#= require DateTimePicker
#= require selectize
#= require stickytableheaders
#= require list
#= require stupidtable
#= require foundation-datetimepicker

# Add error class to .avatar images if they fail to load
# See avatar.scss and _avatar.html.haml
#= require imagesloaded
#= require avatar.errors


$('table').stickyTableHeaders();
$("table").stupidtable();

$('#member_district').selectize({
    sortField: 'text'
});

$('#member_chapter').selectize({
    sortField: 'text'
});

$('#member_division').selectize({
    sortField: 'text'
});

$('#guest_district').selectize({
    sortField: 'text'
});

$('#guest_chapter').selectize({
    sortField: 'text'
});

$('#guest_division').selectize({
    sortField: 'text'
});
