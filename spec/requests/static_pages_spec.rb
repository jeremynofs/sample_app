require 'spec_helper'

describe "Static pages" do

	describe "Home page" do

		it "shoule have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_content('Sample App')
		end
	end
end
