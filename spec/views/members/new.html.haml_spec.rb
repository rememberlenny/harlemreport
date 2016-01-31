require 'rails_helper'

RSpec.describe "members/new", :type => :view do
  before(:each) do
    assign(:member, Member.new(
      :firstname => "MyString",
      :lastname => "MyString",
      :zone => "MyString",
      :region => "MyString",
      :chapter => "MyString",
      :district => "MyString",
      :sponsor_name => "MyString",
      :enshrined => false,
      :district_connected => false,
      :contact_person => "MyString",
      :note => "MyText"
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input#member_firstname[name=?]", "member[firstname]"

      assert_select "input#member_lastname[name=?]", "member[lastname]"

      assert_select "input#member_zone[name=?]", "member[zone]"

      assert_select "input#member_region[name=?]", "member[region]"

      assert_select "input#member_chapter[name=?]", "member[chapter]"

      assert_select "input#member_district[name=?]", "member[district]"

      assert_select "input#member_sponsor_name[name=?]", "member[sponsor_name]"

      assert_select "input#member_enshrined[name=?]", "member[enshrined]"

      assert_select "input#member_district_connected[name=?]", "member[district_connected]"

      assert_select "input#member_contact_person[name=?]", "member[contact_person]"

      assert_select "textarea#member_note[name=?]", "member[note]"
    end
  end
end
