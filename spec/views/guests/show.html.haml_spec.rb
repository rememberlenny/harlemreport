require 'rails_helper'

RSpec.describe "guests/show", :type => :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :firstname => "Firstname",
      :lastname => "Lastname",
      :status => "Status",
      :sponsor_name => "Sponsor Name",
      :contact_person => "Contact Person",
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Sponsor Name/)
    expect(rendered).to match(/Contact Person/)
    expect(rendered).to match(/MyText/)
  end
end
