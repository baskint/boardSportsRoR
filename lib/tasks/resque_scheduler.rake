namespace :resque do
  task :setup => :environment do
    require 'resque'
    require 'resque-scheduler'
  end

  desc 'Start Resque scheduler'
    task :scheduler => :setup do
      Resque::Scheduler.run
  end
end
