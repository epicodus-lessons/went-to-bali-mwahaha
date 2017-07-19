require 'rails_helper'

describe 'the products path' do
  it 'shows products on index' do
    order_item = FactoryGirl.create(:order_item)
    visit products_path
    expect(page).to have_content order_item.product.name
  end

  # it 'shows the detail partial for a product' do
  #   order_item = FactoryGirl.create(:order_item)
  #   visit products_path
  #   click_link 'test_product'
  #   expect(page).to have_content order_item.product.description
  # end

  it 'add a product to the shopping cart' do
    order_item = FactoryGirl.create(:order_item)
    visit products_path
    click_button 'Add to cart'
    expect(page).to have_content 'Total items: 1'
  end

  it 'add a second product to the shopping cart' do
    order_item = FactoryGirl.create(:order_item)
    order_item1 = FactoryGirl.create(:order_item)
    visit products_path
    page.all(:css, "input", class: "atc")[0].click
    page.all(:css, "input", class: "atc")[1].click
    expect(page).to have_content 'Total items: 2'
  end
end