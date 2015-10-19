require 'rails_helper'

RSpec.describe "sightings/index", type: :view do
  before(:each) do
    assign(:sightings, [
      Sighting.create!(
        :date => "",
        :latitude => "",
        :longitude => "Longitude"
      ),
      Sighting.create!(
        :date => "",
        :latitude => "",
        :longitude => "Longitude"
      )
    ])
  end

  it "renders a list of sightings" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
  end
end
