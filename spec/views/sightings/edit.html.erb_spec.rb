require 'rails_helper'

RSpec.describe "sightings/edit", type: :view do
  before(:each) do
    @sighting = assign(:sighting, Sighting.create!(
      :date => "",
      :latitude => "",
      :longitude => "MyString"
    ))
  end

  it "renders the edit sighting form" do
    render

    assert_select "form[action=?][method=?]", sighting_path(@sighting), "post" do

      assert_select "input#sighting_date[name=?]", "sighting[date]"

      assert_select "input#sighting_latitude[name=?]", "sighting[latitude]"

      assert_select "input#sighting_longitude[name=?]", "sighting[longitude]"
    end
  end
end
