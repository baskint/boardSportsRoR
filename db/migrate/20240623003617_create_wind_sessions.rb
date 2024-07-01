class CreateWindSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :wind_sessions do |t|
      t.string :name
      t.string :location
      t.date :session_date
      t.float :duration_hours
      t.text :notes

      t.timestamps
    end
  end
end
