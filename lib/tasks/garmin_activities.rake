namespace :garmin_activities do
  desc "Seeds activities"
  task seed_activities: :environment do

    GarminActivity.create!([{
      activity_type: "Cycling"
    },
    {
      activity_type: "Windsurfing"
    },
    {
      activity_type: "Kiting"
    }])

    p "Created #{GarminActivity.count} activities"
  end
end
