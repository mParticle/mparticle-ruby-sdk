# MParticle::EventsApi

All URIs are relative to *https://s2s.mparticle.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_upload_events**](EventsApi.md#bulk_upload_events) | **POST** /bulkevents | Send events to mParticle
[**upload_events**](EventsApi.md#upload_events) | **POST** /events | Send events to mParticle


# **bulk_upload_events**
> bulk_upload_events(body)

Send events to mParticle



### Example
```ruby
# load the gem
require 'mparticle'
MParticle.configure do |config|
  # set credentials
  config.api_key = 'REPLACE WITH API KEY'
  config.api_secret = 'REPLACE WITH API SECRET'
end

api_instance = MParticle::EventsApi.new

batch = MParticle::Batch.new
batch.environment = 'development'

app_event = MParticle::AppEvent.new
app_event.event_name = 'Test event'
app_event.custom_event_type = 'navigation'

batch.events = [MParticle::SessionStartEvent.new, app_event, MParticle::SessionEndEvent.new]

begin
  # send events
  api_instance.bulk_upload_events(batch)
rescue MParticle::ApiError => e
  puts "Exception when calling mParticle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Array&lt;Batch&gt;**](Batch.md)| Up to 100 Batch objects | 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html, application/json



# **upload_events**
> upload_events(body)

Send events to mParticle



### Example
```ruby
# load the gem
require 'mparticle'
MParticle.configure do |config|
  # set credentials
  config.api_key = 'REPLACE WITH API KEY'
  config.api_secret = 'REPLACE WITH API SECRET'
end

api_instance = MParticle::EventsApi.new

batch = MParticle::Batch.new
batch.environment = 'development'

app_event = MParticle::AppEvent.new
app_event.event_name = 'Test event'
app_event.custom_event_type = 'navigation'

batch.events = [MParticle::SessionStartEvent.new, app_event, MParticle::SessionEndEvent.new]

begin
  # send events
  api_instance.upload_events(batch)
rescue MParticle::ApiError => e
  puts "Exception when calling mParticle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Batch**](Batch.md)| Batch of event data | 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html, application/json



