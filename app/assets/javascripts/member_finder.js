$.get( BASE_URL + "/members.json", function( data ) {
  member_data = data;
  setup_member_search(member_data);
  console.log('Running', data);
});


var formatName = function(item) {
  return $.trim((item.firstname || '') + ' ' + (item.lastname || ''));
};

function setup_member_search(member_data){
    $('#guest_sponsor_name').selectize({
      persist: false,
      maxItems: 1,
      valueField: 'id',
      labelField: 'name',
      searchField: ['firstname', 'lastname', 'chapter'],
      sortField: [
        {field: 'firstname', direction: 'asc'},
        {field: 'lastname', direction: 'asc'}
      ],
      options: member_data,
      render: {
        item: function(item, escape) {
          var name = formatName(item);
          return '<div>' +
            (name ? '<span class="name">' + escape(name) + '</span>' : '') +
            (item.chapter ? '<span class="chapter">' + escape(item.chapter) + '</span>' : '') +
          '</div>';
        },
        option: function(item, escape) {
          var name = formatName(item);
          var label = name || item.chapter;
          var caption = name ? item.chapter : null;
          return '<div>' +
            '<span class="label">' + escape(label) + '</span>' +
            (caption ? '<span class="caption">' + escape(caption) + '</span>' : '') +
          '</div>';
        }
      },
      create: function(input) {
        var name       = input;
        var pos_space  = name.indexOf(' ');
        var firstname = name.substring(0, pos_space);
        var lastname  = name.substring(pos_space + 1);
        return {
          chapter: 'match[2]',
          firstname: firstname,
          lastname: lastname
        };
      }
    });
}
