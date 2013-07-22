require 'spec_helper'

feature 'Saving Important Dates' do
  before do
    visit '/'
    click_link 'Enter New Date'
  end

  scenario "can save an important date" do
    fill_in 'Calendar Date', :with => 'August 2, 2013'
    fill_in 'Title', :with => 'Silver Course End Date'
    fill_in 'Location', :with => 'Tech Stars Office'
    click_button 'Save Date'
    page.should have_content('Date has been saved.')
  end

  scenario "can not save a date without an actual date" do
    click_button 'Save Date'
    page.should have_content("Date has been saved.")
    page.should have_content("Date can't be blank.")
  end
end
