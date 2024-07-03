require 'google/cloud/pubsub'

class CheckPubSubTopicJob
  @queue = :default

  def self.perform
    Rails.logger.info("Second time")

    json_key_file = Rails.root.join('config', 'sa.json')

    # Load credentials from the JSON key file
    credentials = File.open(json_key_file) do |file|
     Google::Auth::ServiceAccountCredentials.make_creds(
      json_key_io: file,
     scope: "https://www.googleapis.com/auth/pubsub"
    )
    end
    pubsub = Google::Cloud::Pubsub.new(
      project_id: ENV['GOOGLE_CLOUD_PROJECT'],
      credentials: credentials
    )
    topic = pubsub.topic('projects/whitaker-home/topics/TempHumidity')
    subscription = topic.subscription('projects/whitaker-home/subscriptions/humidex-sub')
    Rails.logger.info("Job is running...")

    subscription.pull.each do |message|
      Rails.logger.info "Received message: #{message.data}"
      # Process your message here
      message.acknowledge!
    end
  rescue StandardError => e
    Rails.logger.error("Failed to check Pub/Sub topic: #{e.message}")
  end
end
