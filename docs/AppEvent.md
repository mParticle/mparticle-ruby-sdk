# MParticle::AppEvent

## Properties

| Name                      | Type                                            | Description | Notes      |
| ------------------------- | ----------------------------------------------- | ----------- | ---------- |
| **timestamp_unixtime_ms** | **Integer**                                     |             | [optional] |
| **event_id**              | **Integer**                                     |             | [optional] |
| **source_message_id**     | **String**                                      |             | [optional] |
| **session_id**            | **Integer**                                     |             | [optional] |
| **session_uuid**          | **String**                                      |             | [optional] |
| **custom_attributes**     | **Hash&lt;String, String&gt;**                  |             | [optional] |
| **location**              | [**GeoLocation**](GeoLocation.md)               |             | [optional] |
| **device_current_state**  | [**DeviceCurrentState**](DeviceCurrentState.md) |             | [optional] |
| **custom_event_type**     | **String**                                      |             |
| **event_name**            | **String**                                      |             |
| **media_info**            | [**MediaInfo**](MediaInfo.md)                   |             | [optional] |
| **custom_flags**          | **dict(str, str)**                              |             | [optional] |
