# OpenAIClient::FineTunesApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_fine_tune**](FineTunesApi.md#cancel_fine_tune) | **POST** /fine-tunes/{fine_tune_id}/cancel | Immediately cancel a fine-tune job. 
[**create_fine_tune**](FineTunesApi.md#create_fine_tune) | **POST** /fine-tunes | Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 
[**list_fine_tune_events**](FineTunesApi.md#list_fine_tune_events) | **GET** /fine-tunes/{fine_tune_id}/events | Get fine-grained status updates for a fine-tune job. 
[**list_fine_tunes**](FineTunesApi.md#list_fine_tunes) | **GET** /fine-tunes | List your organization&#x27;s fine-tuning jobs 
[**retrieve_fine_tune**](FineTunesApi.md#retrieve_fine_tune) | **GET** /fine-tunes/{fine_tune_id} | Gets info about the fine-tune job.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 

# **cancel_fine_tune**
> FineTune cancel_fine_tune(fine_tune_id)

Immediately cancel a fine-tune job. 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FineTunesApi.new
fine_tune_id = 'fine_tune_id_example' # String | The ID of the fine-tune job to cancel 


begin
  #Immediately cancel a fine-tune job. 
  result = api_instance.cancel_fine_tune(fine_tune_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FineTunesApi->cancel_fine_tune: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fine_tune_id** | **String**| The ID of the fine-tune job to cancel  | 

### Return type

[**FineTune**](FineTune.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_fine_tune**
> FineTune create_fine_tune(body)

Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FineTunesApi.new
body = OpenAIClient::CreateFineTuneRequest.new # CreateFineTuneRequest | 


begin
  #Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 
  result = api_instance.create_fine_tune(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FineTunesApi->create_fine_tune: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFineTuneRequest**](CreateFineTuneRequest.md)|  | 

### Return type

[**FineTune**](FineTune.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_fine_tune_events**
> ListFineTuneEventsResponse list_fine_tune_events(fine_tune_id, opts)

Get fine-grained status updates for a fine-tune job. 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FineTunesApi.new
fine_tune_id = 'fine_tune_id_example' # String | The ID of the fine-tune job to get events for. 
opts = { 
  stream: false # BOOLEAN | Whether to stream events for the fine-tune job. If set to true, events will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available. The stream will terminate with a `data: [DONE]` message when the job is finished (succeeded, cancelled, or failed).  If set to false, only events generated so far will be returned. 
}

begin
  #Get fine-grained status updates for a fine-tune job. 
  result = api_instance.list_fine_tune_events(fine_tune_id, opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FineTunesApi->list_fine_tune_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fine_tune_id** | **String**| The ID of the fine-tune job to get events for.  | 
 **stream** | **BOOLEAN**| Whether to stream events for the fine-tune job. If set to true, events will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available. The stream will terminate with a &#x60;data: [DONE]&#x60; message when the job is finished (succeeded, cancelled, or failed).  If set to false, only events generated so far will be returned.  | [optional] [default to false]

### Return type

[**ListFineTuneEventsResponse**](ListFineTuneEventsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_fine_tunes**
> ListFineTunesResponse list_fine_tunes

List your organization's fine-tuning jobs 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FineTunesApi.new

begin
  #List your organization's fine-tuning jobs 
  result = api_instance.list_fine_tunes
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FineTunesApi->list_fine_tunes: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListFineTunesResponse**](ListFineTunesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **retrieve_fine_tune**
> FineTune retrieve_fine_tune(fine_tune_id)

Gets info about the fine-tune job.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FineTunesApi.new
fine_tune_id = 'fine_tune_id_example' # String | The ID of the fine-tune job 


begin
  #Gets info about the fine-tune job.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 
  result = api_instance.retrieve_fine_tune(fine_tune_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FineTunesApi->retrieve_fine_tune: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fine_tune_id** | **String**| The ID of the fine-tune job  | 

### Return type

[**FineTune**](FineTune.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



