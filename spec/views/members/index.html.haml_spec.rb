require 'rails_helper'

RSpec.describe "members/index", :type => :view do
  before(:each) do
    assign(:members, [
      Member.create!(
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
      ),
      Member.create!(
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
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Zone".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "Chapter".to_s, :count => 2
    assert_select "tr>td", :text => "District".to_s, :count => 2
    assert_select "tr>td", :text => "Sponsor Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Contact Person".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
