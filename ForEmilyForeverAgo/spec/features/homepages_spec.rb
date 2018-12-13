require 'rails_helper'

RSpec.feature "Homepages", type: :feature do

  before(:example) do
  end
    
  scenario "When I vist the Homepage I should see welcome message" do
    visit '/'
    expect(page).to have_text("Welcome Emily x")
    
  end

  scenario "...I should be able to select todays date and create an order", js: true do
    visit '/'

    expect(page).to have_button(Date.today)

    products = Product.all

    products.each do |product|
      expect(page).to_not have_text(product.name)
    end

    click_button Date.today

    products.each do |product|
      expect(page).to have_text(product[:name])
    end
  end

end
