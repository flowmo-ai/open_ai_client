# OpenAIClient::AuditLogsApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_audit_logs**](AuditLogsApi.md#list_audit_logs) | **GET** /organization/audit_logs | List user actions and configuration changes within this organization.

# **list_audit_logs**
> ListAuditLogsResponse list_audit_logs(opts)

List user actions and configuration changes within this organization.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AuditLogsApi.new
opts = { 
  effective_at: OpenAIClient::EffectiveAt.new, # EffectiveAt | Return only events whose `effective_at` (Unix seconds) is in this range.
  project_ids: ['project_ids_example'], # Array<String> | Return only events for these projects.
  event_types: [OpenAIClient::AuditLogEventType.new], # Array<AuditLogEventType> | Return only events with a `type` in one of these values. For example, `project.created`. For all options, see the documentation for the [audit log object](/docs/api-reference/audit-logs/object).
  actor_ids: ['actor_ids_example'], # Array<String> | Return only events performed by these actors. Can be a user ID, a service account ID, or an api key tracking ID.
  actor_emails: ['actor_emails_example'], # Array<String> | Return only events performed by users with these emails.
  resource_ids: ['resource_ids_example'], # Array<String> | Return only events performed on these targets. For example, a project ID updated.
  limit: 20, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example' # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
}

begin
  #List user actions and configuration changes within this organization.
  result = api_instance.list_audit_logs(opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AuditLogsApi->list_audit_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **effective_at** | [**EffectiveAt**](.md)| Return only events whose &#x60;effective_at&#x60; (Unix seconds) is in this range. | [optional] 
 **project_ids** | [**Array&lt;String&gt;**](String.md)| Return only events for these projects. | [optional] 
 **event_types** | [**Array&lt;AuditLogEventType&gt;**](AuditLogEventType.md)| Return only events with a &#x60;type&#x60; in one of these values. For example, &#x60;project.created&#x60;. For all options, see the documentation for the [audit log object](/docs/api-reference/audit-logs/object). | [optional] 
 **actor_ids** | [**Array&lt;String&gt;**](String.md)| Return only events performed by these actors. Can be a user ID, a service account ID, or an api key tracking ID. | [optional] 
 **actor_emails** | [**Array&lt;String&gt;**](String.md)| Return only events performed by users with these emails. | [optional] 
 **resource_ids** | [**Array&lt;String&gt;**](String.md)| Return only events performed on these targets. For example, a project ID updated. | [optional] 
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] 

### Return type

[**ListAuditLogsResponse**](ListAuditLogsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



