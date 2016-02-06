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
      ['Fort George', 'FortGeorge'],
      ['Harlem', 'Harlem'],
      ['Morningside', 'Morningside'],
      ['Washington Heights', 'WashingtonHeights'],
      ['West Harlem', 'WestHarlem']
    ]
  end

  def guest_status
    [
      ['', ''],
      ['0. First Meeting', 'first_meeting'],
      ['1. Second Meeting', 'second_meeting'],
      ['2. Long Time Guest', 'long_time_guest'],
      ['3. Has Publications', 'has_publications'],
      ['4. Ready to Receive', 'ready_to_receive']
    ]
  end

  def division_status
    [
      ['', ''],
      ['YWD', 'YWD'],
      ['YMD', 'YMD'],
      ['WD', 'WD'],
      ['MD', 'MD'],
    ]
  end
end
