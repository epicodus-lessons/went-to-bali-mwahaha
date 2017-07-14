require 'rails_helper'

describe 'the session path' do
  it 'signs up user in' do
    visit sign_up_path
    fill_in 'user_name', with: 'hi'
    fill_in 'user_email', with: 'hi@'
    fill_in 'user_password', with: 'hi'
    fill_in 'user_password_confirmation', with: 'hi'
    click_button 'Sign up'
    expect(page).to have_current_path root_path
    expect(page).to have_content 'hi@'
  end

  it 'signs a user out' do
    visit sign_up_path
    fill_in 'user_name', with: 'hi'
    fill_in 'user_email', with: 'hi@'
    fill_in 'user_password', with: 'hi'
    fill_in 'user_password_confirmation', with: 'hi'
    click_button 'Sign up'
    click_link 'Sign out'
    expect(page).to have_current_path sign_in_path
    expect(page).to have_content "You've signed out!"
  end

   it 'signs a user in' do
    visit sign_up_path
    fill_in 'user_name', with: 'hi'
    fill_in 'user_email', with: 'hi@'
    fill_in 'user_password', with: 'hi'
    fill_in 'user_password_confirmation', with: 'hi'
    click_button 'Sign up'
    click_link 'Sign out'
    click_link 'Sign in'
    fill_in 'email', with: 'hi@'
    fill_in 'password', with: 'hi'
    click_button 'Sign in'
    expect(page).to have_current_path root_path
    expect(page).to have_content "hi@"
  end
end