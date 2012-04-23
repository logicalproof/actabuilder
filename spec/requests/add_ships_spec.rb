require 'spec_helper'

describe "AddShips" do
  before { visit signin_path }
  let(:user) { FactoryGirl.create(:admin) }
  before do
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end
  describe "add a new ship" do
    it "should redirect to the ship form" do
      visit ships_path
      click_link "Add a new ship"
      page.should have_content("New ship")
    end
  end
end
