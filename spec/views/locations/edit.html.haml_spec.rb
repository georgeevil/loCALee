require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :longitude => "9.99",
      :latitude => "9.99",
      :name => "MyString",
      :User => nil
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path(@location), :method => "post" do
      assert_select "input#location_longitude", :name => "location[longitude]"
      assert_select "input#location_latitude", :name => "location[latitude]"
      assert_select "input#location_name", :name => "location[name]"
      assert_select "input#location_User", :name => "location[User]"
    end
  end
end
