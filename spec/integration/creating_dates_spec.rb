require 'spec_helper'

feature 'Creating Important Dates' do
  scenario "can create an important date" do
    visit '/'
    click_link 'Save New Date'
    fill_in 'Date', :with => 'August 2, 2013'
    fill_in 'Title', :with => 'Silver Course End Date'
    fill_in 'Location', :with => 'Tech Stars Office'
    click_button 'Save Date'
    page.should have_content('Important date has been saved.')
  end
end
