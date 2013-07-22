class RemoveCalendardateFromSavedates < ActiveRecord::Migration
  def up
    remove_column :savedates, :calendardate
  end

  def down
    add_column :savedates, :calendardate, :string
  end
end
