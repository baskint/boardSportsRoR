require 'csv'

namespace :garmin_activities do
  desc "Seeds activities"
  task seed: :environment do

    MAP = {
      "Activity Type" => :activity_type,
      "Date" => :date_time,
      "Title" => :location,
      "Distance" => :distance,
      "Calories" => :calories,
      # "Duration" => :duration,
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
        puts "key: #{k}"
        data[key] = v if key
      end
      puts data
      GarminActivity.create! data
    end
    # GarminActivity.create!([{
    #   activity_type: "Cycling",
    #   date_time: "2021-04-29 17:50",
    #   location: "White Bear Lake",
    #   distance: 28.62,
    #   calories: 826,
    #   duration: 114,
    #   avg_hr: 122,
    #   max_hr: 157,
    #   avg_speed: 15,
    #   max_speed: 25.9,
    #   avg_bike_cadence: 70,
    #   max_bike_cadence: 106,
    #   min_temp: 57.2,
    #   climb_time: 114,
    #   notes: "This was after putting on the 25mm tires"
    # },
    # {
    #   activity_type: "Windsurfing"
    # },
    # {
    #   activity_type: "Kiting"
    # }])

    # p "Created #{GarminActivity.count} activities"
  end
end
