class CreateGarminActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :garmin_activities, id: :uuid do |t|
      t.string :activity_type
      t.datetime :date_time
      t.string :location
      t.decimal :distance
      t.integer :calories
      t.string :duration
      t.integer :avg_hr
      t.integer :max_hr
      t.decimal :avg_speed
      t.decimal :max_speed
      t.integer :avg_pace
      t.integer :max_pace
      t.integer :avg_bike_cadence
      t.integer :max_bike_cadence
      t.integer :min_temp
      t.integer :climb_time
      t.text :notes

      t.timestamps
    end
  end
end
