class CreateGarminActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :garmin_activities, id: :uuid do |t|
      t.string :activity_type
      t.datetime :date_time, null: false, index: { unique: true }
      t.string :location
      t.decimal :distance, precision: 10, scale: 2
      t.integer :calories
      t.integer :duration
      t.integer :avg_hr
      t.integer :max_hr
      t.decimal :avg_speed, precision: 10, scale: 1
      t.decimal :max_speed, precision: 10, scale: 1
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
