require 'rails_helper'
require 'spec_helper'

RSpec.describe PagesController, type: :controller  do
  render_views


	describe "GET 'home'" do
    it "devrait réussir" do
      get 'home'
      expect(response).to have_http_status(:success)
    end
	it " should have the right title" do
	  visit 'home'
	  #binding.pry	
      page.should have_selector("title",
                        text: " | Accueil", visible: false)
	end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
	 it "devrait avoir le bon titre" do
      get 'contact'
      response.should has_selector("title",
                        :content => "Simple App du Tutoriel Ruby on Rails | Contact")
    end
  end

  describe "Get about" do
	it "returns http sucess" do
	  get :about
	  expect(response).to have_http_status(:success)
	end
 	it "devrait avoir le bon titre" do
      get 'about'
      response.should have_selector("title",
                        :content => "Simple App du Tutoriel Ruby on Rails | About")
    end
  end
end
