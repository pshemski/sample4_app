require 'spec_helper'

describe "StaticPages" do

	let(:title_base) {"Ruby on Rails Tutorial"}

  describe "Home page" do
    it "should have content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "" do
      visit '/static_pages/home'
      expect(page).to have_title("#{title_base}")
    end

    it "should have a title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).not_to have_title(" | Home")
    end
  end

  describe "Help page" do
    it "should have content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have a title 'Help'" do
    	visit '/static_pages/help'
    	expect(page).to have_title("#{title_base} | Help")
    end
  end

  describe "About page" do
    it "should have content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have a title 'About Us'" do
    	visit '/static_pages/about'
    	expect(page).to have_title("#{title_base} | About Us")
    end
  end

  describe "Contact page" do
    it "should have content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have a title 'Contact'" do
    	visit '/static_pages/contact'
    	expect(page).to have_title("#{title_base} | Contact")
    end
  end
end
