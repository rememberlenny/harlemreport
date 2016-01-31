require 'rails_helper'

RSpec.describe "members/show", :type => :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :firstname => "Firstname",
      :lastname => "Lastname",
      :zone => "Zone",
      :region => "Region",
      :chapter => "Chapter",
      :district => "District",
      :sponsor_name => "Sponsor Name",
      :enshrined => false,
      :district_connected => false,
      :contact_person => "Contact Person",
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Zone/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/Chapter/)
    expect(rendered).to match(/District/)
    expect(rendered).to match(/Sponsor Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Contact Person/)
    expect(rendered).to match(/MyText/)
  end
end
