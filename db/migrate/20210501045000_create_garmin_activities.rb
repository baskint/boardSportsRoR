class CreateGarminActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :garmin_activities do |t|
      t.string :activity_type
      t.date :activity_date
      t.decimal :distance
      t.integer :calories

      t.timestamps
    end
  end
end
