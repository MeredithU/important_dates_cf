class Savedate < ActiveRecord::Base
  attr_accessible :calendardate, :location, :title

  #validates :calendardate, :presence => true
  validates :calendardate, :presence => { message: "Date can't be blank." }
end
