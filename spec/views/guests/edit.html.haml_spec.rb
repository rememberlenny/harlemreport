require 'rails_helper'

RSpec.describe "guests/edit", :type => :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :firstname => "MyString",
      :lastname => "MyString",
      :status => "MyString",
      :sponsor_name => "MyString",
      :contact_person => "MyString",
      :note => "MyText"
    ))
  end

  it "renders the edit guest form" do
    render

    assert_select "form[action=?][method=?]", guest_path(@guest), "post" do

      assert_select "input#guest_firstname[name=?]", "guest[firstname]"

      assert_select "input#guest_lastname[name=?]", "guest[lastname]"

      assert_select "input#guest_status[name=?]", "guest[status]"

      assert_select "input#guest_sponsor_name[name=?]", "guest[sponsor_name]"

      assert_select "input#guest_contact_person[name=?]", "guest[contact_person]"

      assert_select "textarea#guest_note[name=?]", "guest[note]"
    end
  end
end
