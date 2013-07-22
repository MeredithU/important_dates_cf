class CreateSavedates < ActiveRecord::Migration
  def change
    create_table :savedates do |t|
      t.string :calendardate
      t.string :title
      t.string :location

      t.timestamps
    end
  end
end
