module ApplicationHelper
  include CommonHelper

  # Render a partial only one time.
  #
  # Useful for rendering partials that require JavaScript like Google Maps
  # where other views may have also included the partial.
  def render_once(view, *args, &block)
    @_render_once ||= {}
    if @_render_once[view]
      nil
    else
      @_render_once[view] = true
      render(view, *args, &block)
    end
  end

  def harlem_district_array
    return [
      ['Fort George',
        ['Cloisters', 'Dyckman', 'Fort Tryon', 'Haven Heights', 'Hudson Heights']
      ],
      ['Harlem',
        ['Astor Row', 'Central Park North', 'East Harlem', 'Marcus Garvey Park']
      ],
      ['Morningside',
        ['Frederick Douglass Blvd', 'Hancock Park', 'Morningside North', 'Teachers College', 'University Grove']
      ],
      ['Washington Heights',
        ['Bridgeview', 'Coogan\'s Bluff', 'Hamilton Grange','New Amsterdam', 'St Nicholas Peak']
      ],
      ['West Harlem',
        ['Broadway Heights', 'City College', 'Convent Gardens', 'Hamilton Heights', 'Sugar Hill']
      ]
    ]
  end

  def harlem_chapters
    [
      ['Fort George', 'Fort George'],
      ['Harlem', 'Harlem'],
      ['Morningside', 'Morningside'],
      ['Washington Heights', 'Washington Heights'],
      ['West Harlem', 'West Harlem']
    ]
  end

  def guest_status
    [
      ['', ''],
      ['. Just met and invited', 'Just met and invited'],
      ['. Friend who was invited', 'Friend who was invited'],
      ['Warm. First Meeting', 'First Meeting'],
      ['Hot. Second Meeting', 'Second Meeting'],
      ['Hot. Long Time Guest', 'Long Time Guest'],
      ['Hot. Has Publications', 'has_publications'],
      ['Burning. Ready to Receive', 'ready_to_receive']
    ]
  end

  def division_status
    [
      ['', ''],
      ['YWD', 'Young Women\'s Division'],
      ['YMD', 'Young Men\'s Division'],
      ['WD', 'Women\'s Division'],
      ['MD', 'Men\'s Division'],
    ]
  end
end
