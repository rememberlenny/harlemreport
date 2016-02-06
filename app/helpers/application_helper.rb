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

  def harlem_chapters
    [
      ['', ''],
      ['Fort George', 'FoGe'],
      ['Harlem', 'Harl'],
      ['Morningside', 'Morn'],
      ['Washington Heights', 'WaHe'],
      ['West Harlem', 'WeHa']
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
