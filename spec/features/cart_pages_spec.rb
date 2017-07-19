require 'rails_helper'

describe "the cart path" do
  it 'displays the cart' do
    visit cart_path
    expect(page).to have_current_path cart_path
    expect(page).to have_content "Your shopping cart is empty."
  end


  it 'finalizes the order' do
    order_item = FactoryGirl.create(:order_item)
    visit sign_up_path
    fill_in 'user_name', with: 'hi'
    fill_in 'user_email', with: 'hi@'
    fill_in 'user_password', with: 'hiwellthepassneedstobelong'
    fill_in 'user_password_confirmation', with: 'hiwellthepassneedstobelong'
    click_button 'Sign up'
    visit products_path
    page.all(:css, "input", class: "atc")[0].click
    visit cart_path
    page.find(:css, "a", text: "Finalize order").click
    expect(page).to have_current_path cart_path
  end

  it 'finalizes the order' do
    order_item = FactoryGirl.create(:order_item)
    visit products_path
    page.all(:css, "input", class: "atc")[0].click
    visit cart_path
    page.find(:css, "a", text: "Finalize order").click
    expect(page).to have_content "You need to sign up or sign in to complete your order."
  end

  it 'removes and item from the cart' do
    order_item = FactoryGirl.create(:order_item)
    visit products_path
    page.all(:css, "input", class: "atc")[0].click
    visit cart_path
    page.find(:css, "a", text: "Delete").click
    expect(page).to have_content "Your shopping cart is empty."
  end
end