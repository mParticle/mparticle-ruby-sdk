#!/usr/bin/env ruby -I../lib

# load the gem
require 'mparticle'
config = MParticle::Configuration.new
config.api_key = 'REPLACE WITH API KEY'
config.api_secret = 'REPLACE WITH API SECRET'
# config.debugging = true

api_instance = MParticle::EventsApi.new(config)

batch = MParticle::Batch.new
batch.environment = 'development'

user_identities = MParticle::UserIdentities.new
user_identities.customerid = '12345'

app_event = MParticle::AppEvent.new
app_event.event_name = 'Test event'
app_event.custom_event_type = 'navigation'

batch.events = [MParticle::SessionStartEvent.new, app_event, MParticle::SessionEndEvent.new]
batch.user_identities = user_identities

begin
  # send events
  thread = api_instance.upload_events(batch) { |data, status_code, headers|
    if status_code == 202
      puts "Upload complete"
    end
  }
  # wait for the thread, otherwise process may exit too early
  thread.join
rescue MParticle::ApiError => e
  puts "Exception when calling mParticle: #{e}"
end
