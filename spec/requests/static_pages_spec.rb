require 'spec_helper'

describe "Static Pages" do

  let(:base_title) { "Twitterish" }

  describe "Home page" do
    
      it "should have the h1 header 'Twitterish'" do
        visit '/static_pages/home'
        page.should have_selector('h1', :text => "Twitterish")
    end

      it "should have the right title" do
        visit '/static_pages/home'
        page.should have_selector('title', :text => "#{base_title} | Home")
    end
  end

  describe "Help page" do
    
    it "should have the h1 header 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text  => "Help")
    end

      it "should have the right title" do
        visit '/static_pages/help'
        page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "About page" do
    
    it "should have the h1 header 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end

      it "should have the right title" do
        visit '/static_pages/about'
        page.should have_selector('title', :text => "#{base_title} | About")
    end
  end

  describe "Contact page" do
    
      it "should have the h1 header 'Contact'" do
        visit '/static_pages/contact'
        page.should have_selector('h1', :text => "Contact")
    end

      it "should have the right title" do
        visit '/static_pages/contact'
        page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end
end
