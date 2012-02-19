require 'spec_helper'

describe 'Static pages' do

  let(:base_title) { "Ruby On Rails Tutorial" }

  describe 'Home page' do
    it "should have the h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do
      visit root_path
      page.should have_selector('title', :text => "Home")
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the right title" do
      visit help_path
      page.should have_selector('title', :text => "Help | #{base_title}")
    end
  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the right title" do
      visit about_path
      page.should have_selector('title', :text => "About Us | #{base_title}")
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contact Us'" do
      visit contact_path
      page.should have_selector('h1', :text => "Contact Us")
    end
    it "should have the right title" do
      visit contact_path
      page.should have_selector('title', :text => "Contact | #{base_title}")
    end
  end
end
