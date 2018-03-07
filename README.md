<img src="http://static.mparticle.com/sdk/logo.svg" width="280">

## Ruby SDK

This is the mParticle Ruby client SDK - use it to send your data to the [mParticle platform](https://www.mparticle.com/) and off to 100+ app services.

## Requirements

Ruby 1.9 or later

### Installation

```sh
gem install mparticle
```

Or add it to your Gemfile:

```ruby
gem 'mparticle'
```

Import the package:

```ruby
require 'mparticle'
```

### Usage

```ruby
# load the gem
require 'mparticle'

# set credentials
config = MParticle::Configuration.new
config.api_key = 'REPLACE WITH API KEY'
config.api_secret = 'REPLACE WITH API SECRET'

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

  # wait for the thread, if needed to prevent the process from terminating
  thread.join

  # you can also omit the callback and synchronously wait until the network request completes.
  data, status_code, headers = api_instance.upload_events(batch)

rescue MParticle::ApiError => e
  puts "Exception when calling mParticle: #{e}"
end
```

### License

[Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0)
