require 'spec_helper'

describe "StaticPages" do
  describe "Home" do
    it "should have the content 'Home'" do
      visit '/static_pages/home'
      page.should have_content('Home')
    end
  end
  describe "Help" do
    it "should have content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end
  describe "About" do
    it "should have title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', text:'About')
    end
  end
  describe "Contact" do
    it "should have title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', text:'Contact')
    end
  end
end
