class Savedate < ActiveRecord::Base
  attr_accessible :location, :title, :eventdate

  validates :eventdate, :presence => { message: "Date can't be blank." }
end
