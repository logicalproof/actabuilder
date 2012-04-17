require 'spec_helper'

describe "AddShips" do
  describe "add a new ship" do
    it "should redirect to the ship form" do
      visit ships_path
      click_link "Add a new ship"
      page.should have_content("New ship")
    end
  end
end
