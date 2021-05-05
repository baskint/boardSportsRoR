require 'csv'
require 'duration_calculator'

namespace :garmin_activities do
  desc "Seeds activities"
  task seed: :environment do

    MAP = {
      "Activity Type" => :activity_type,
      "Date" => :date_time,
      "Title" => :location,
      "Distance" => :distance,
      "Calories" => :calories,
      "Time" => :duration,
      "Avg Speed" => :avg_speed,
      "Max Speed" => :max_speed
    }
    # dirname = File.basename(Dir.pwd)
    # puts dirname

    csv_text = File.read('./test/fixtures/ga_bulk.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      data = {}
      row.to_hash.each do |k, v|
        key = MAP[k]
        if k == "Time"
          data[key] = DurationCalculator.compute(v)
        else
          data[key] = v if key
        end
      end
      puts data
      GarminActivity.create! data
    end
  end
end
