require 'rails_helper'

RSpec.describe "guests/index", :type => :view do
  before(:each) do
    assign(:guests, [
      Guest.create!(
        :firstname => "Firstname",
        :lastname => "Lastname",
        :status => "Status",
        :sponsor_name => "Sponsor Name",
        :contact_person => "Contact Person",
        :note => "MyText"
      ),
      Guest.create!(
        :firstname => "Firstname",
        :lastname => "Lastname",
        :status => "Status",
        :sponsor_name => "Sponsor Name",
        :contact_person => "Contact Person",
        :note => "MyText"
      )
    ])
  end

  it "renders a list of guests" do
    render
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Sponsor Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Person".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
