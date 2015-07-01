require 'rails_helper'

RSpec.describe PagesController, type: :controller  do
  render_views


	describe "GET 'home'" do
    it "devrait réussir" do
      get 'home'
      response.should be_success
    end
	it "devrait avoir le bon titre" do
	  get 'home'
      response.should have_selector("title",
                        :content => " | Accueil")
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
