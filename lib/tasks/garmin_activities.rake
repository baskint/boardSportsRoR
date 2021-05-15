require 'csv'
require 'duration_calculator'
require 'activity_type_matcher'

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
      "Avg HR" => :avg_hr,
      "Max HR" => :max_hr,
      "Avg Speed" => :avg_speed,
      "Max Speed" => :max_speed,
      "Avg Pace" => :avg_pace,
      "Max Pace" => :max_pace,
      "Avg Bike Cadence" => :avg_bike_cadence,
      "Max Bike Cadence" => :max_bike_cadence,
      "Min Temp" => :min_temp,
      "Climb Time" => :climb_time
    }
    # dirname = File.basename(Dir.pwd)
    # puts dirname

    csv_text = File.read('./test/fixtures/ga_5_15_2021.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      data = {}
      row.to_hash.each do |k, v|
        key = MAP[k]
        if k == "Time"
          data[key] = DurationCalculator.compute(v)
        elsif k == "Title"
          data[key] = v
          if ActivityTypeMatcher.match(v)
            data[:activity_type] =  ActivityTypeMatcher.match(v)
          end
        # elsif k == "Climb Time"
        #   data[key] = DurationCalculator.compute(v)
        else
          data[key] = v if key
        end
      end
      puts data
      GarminActivity.find_or_create_by data
    end
  end
end
