class AddEventdateToSavedate < ActiveRecord::Migration
  def change
    add_column :savedates, :eventdate, :datetime
  end
end
