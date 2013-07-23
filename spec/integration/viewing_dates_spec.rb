# Not working, refactor

require 'spec_helper'

feature "Viewing dates" do
  scenario "Listing all dates" do
    savedate = Factory.create(:savedate, :eventdate => "August 2, 2013")
    visit '/'
    click_link 'August 2, 2013'
    page.current_url.should == savedate_url(savedate)
  end
end
