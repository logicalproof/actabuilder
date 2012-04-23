require 'spec_helper'

describe "UserPages" do
  subject { page }
  
  describe "signup page" do
    before { visit signup_path }
    
    it { should have_selector('h1', text: 'Sign up') }
  end
  
  describe "profile page" do
    before { visit signup_path }
    let(:user) { FactoryGirl.create(:admin) }
    before do
      fill_in "Name", with: user.name
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      fill_in "Confirmation", with: user.password
      click_button "Create my account"
    end
    
    it { should have_selector('h1', text: user.name) }
  end
end
