# MParticle::CrashReportEvent

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
**breadcrumbs** | [**Array&lt;BreadcrumbEvent&gt;**](BreadcrumbEvent.md) |  | [optional] 
**class_name** | **String** |  | 
**severity** | **String** |  | [optional] 
**message** | **String** |  | 
**stack_trace** | **String** |  | 
**exception_handled** | **BOOLEAN** |  | 
**topmost_context** | **String** |  | [optional] 
**pl_crash_report_file_base64** | **String** |  | [optional] 
**ios_image_base_address** | **Integer** |  | [optional] 
**ios_image_size** | **Integer** |  | [optional] 
**session_number** | **Integer** |  | [optional] 


