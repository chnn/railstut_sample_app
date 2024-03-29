require 'spec_helper'

describe 'Static pages' do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe 'Home page' do
    before { visit root_path }

    let(:heading) { 'Sample App' }
    let(:page_title) { 'Home' }
  end

  describe 'Help page' do
    before { visit help_path }
    
    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }
  end
  
  describe 'About page' do
    before { visit about_path }
    let(:heading) { 'About Us' }
    let(:page_title) { 'About Us' }
  end

  describe 'Contact page' do
    before { visit contact_path }
    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }
  end

  it "should have the right links in the layout" do
    visit root_path
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "About"
    page.should have_selector 'title', text: full_title('About')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    page.should have_selector 'title', text: full_title('Home')
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign up')
  end

end
