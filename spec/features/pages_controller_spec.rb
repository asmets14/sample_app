require 'spec_helper'
require 'rails_helper'

RSpec.describe PagesController, type: :controller  do
  render_views

	describe "GET 'home'" do
	it " should have the right title" do
	  visit 'home'
	  #binding.pry	
      page.should have_selector("title",
                        text: " | Accueil", visible: false)
	end
  end
end
