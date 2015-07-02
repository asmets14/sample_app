require 'rails_helper'

# Utilises Rspec.feature ... do ... end afin d'avoir accès à Capybara et à l'objet `page`
RSpec.feature "Static pages", :type => :feature do
  scenario "Visiting the home page" do
    visit "/pages/home"
    expect(page).to have_selector("title",
                        text: " | Accueil", visible: false)
  end
end
