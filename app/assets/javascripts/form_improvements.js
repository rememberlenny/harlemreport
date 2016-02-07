$(function () {
  $('#index').stickyTableHeaders();
});

$("#index").stupidtable();

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

var options = {
  valueNames: [ 'firstname', 'lastname', 'division', 'last_contact', 'district', 'chapter', 'date_received' ],
  plugins: [ ListFuzzySearch() ]
};
var userList = new List('index_list', options);
