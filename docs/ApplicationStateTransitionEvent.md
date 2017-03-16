# MParticle::ApplicationStateTransitionEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp_unixtime_ms** | **Integer** |  | [optional] 
**event_id** | **Integer** |  | [optional] 
**source_message_id** | **String** |  | [optional] 
**session_id** | **Integer** |  | [optional] 
**session_uuid** | **String** |  | [optional] 
**custom_attributes** | **Hash&lt;String, String&gt;** |  | [optional] 
**location** | [**GeoLocation**](GeoLocation.md) |  | [optional] 
**device_current_state** | [**DeviceCurrentState**](DeviceCurrentState.md) |  | [optional] 
**successfully_closed** | **BOOLEAN** |  | [optional] 
**is_first_run** | **BOOLEAN** |  | [optional] 
**is_upgrade** | **BOOLEAN** |  | [optional] 
**push_notification_payload** | **String** |  | [optional] 
**application_transition_type** | **String** |  | 


