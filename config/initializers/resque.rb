require 'resque'
require 'resque/scheduler'
require 'resque/scheduler/server'

Resque.redis = Redis.new(url: ENV['REDIS_URL'] || 'redis://localhost:6379')
Resque.schedule = YAML.load_file(Rails.root.join('config', 'resque_schedule.yml'))

# Add Resque Scheduler to the Resque Web UI
Resque::Scheduler.dynamic = true if defined?(Resque::Scheduler)
