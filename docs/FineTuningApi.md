# OpenAIClient::FineTuningApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_fine_tuning_job**](FineTuningApi.md#cancel_fine_tuning_job) | **POST** /fine_tuning/jobs/{fine_tuning_job_id}/cancel | Immediately cancel a fine-tune job. 
[**create_fine_tuning_job**](FineTuningApi.md#create_fine_tuning_job) | **POST** /fine_tuning/jobs | Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 
[**list_fine_tuning_events**](FineTuningApi.md#list_fine_tuning_events) | **GET** /fine_tuning/jobs/{fine_tuning_job_id}/events | Get status updates for a fine-tuning job. 
[**list_paginated_fine_tuning_jobs**](FineTuningApi.md#list_paginated_fine_tuning_jobs) | **GET** /fine_tuning/jobs | List your organization&#x27;s fine-tuning jobs 
[**retrieve_fine_tuning_job**](FineTuningApi.md#retrieve_fine_tuning_job) | **GET** /fine_tuning/jobs/{fine_tuning_job_id} | Get info about a fine-tuning job.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 

# **cancel_fine_tuning_job**
> FineTuningJob cancel_fine_tuning_job(fine_tuning_job_id)

Immediately cancel a fine-tune job. 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FineTuningApi.new
fine_tuning_job_id = 'fine_tuning_job_id_example' # String | The ID of the fine-tuning job to cancel. 


begin
  #Immediately cancel a fine-tune job. 
  result = api_instance.cancel_fine_tuning_job(fine_tuning_job_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FineTuningApi->cancel_fine_tuning_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fine_tuning_job_id** | **String**| The ID of the fine-tuning job to cancel.  | 

### Return type

[**FineTuningJob**](FineTuningJob.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_fine_tuning_job**
> FineTuningJob create_fine_tuning_job(body)

Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FineTuningApi.new
body = OpenAIClient::CreateFineTuningJobRequest.new # CreateFineTuningJobRequest | 


begin
  #Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 
  result = api_instance.create_fine_tuning_job(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FineTuningApi->create_fine_tuning_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFineTuningJobRequest**](CreateFineTuningJobRequest.md)|  | 

### Return type

[**FineTuningJob**](FineTuningJob.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_fine_tuning_events**
> ListFineTuningJobEventsResponse list_fine_tuning_events(fine_tuning_job_id, opts)

Get status updates for a fine-tuning job. 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FineTuningApi.new
fine_tuning_job_id = 'fine_tuning_job_id_example' # String | The ID of the fine-tuning job to get events for. 
opts = { 
  after: 'after_example', # String | Identifier for the last event from the previous pagination request.
  limit: 20 # Integer | Number of events to retrieve.
}

begin
  #Get status updates for a fine-tuning job. 
  result = api_instance.list_fine_tuning_events(fine_tuning_job_id, opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FineTuningApi->list_fine_tuning_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fine_tuning_job_id** | **String**| The ID of the fine-tuning job to get events for.  | 
 **after** | **String**| Identifier for the last event from the previous pagination request. | [optional] 
 **limit** | **Integer**| Number of events to retrieve. | [optional] [default to 20]

### Return type

[**ListFineTuningJobEventsResponse**](ListFineTuningJobEventsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_paginated_fine_tuning_jobs**
> ListPaginatedFineTuningJobsResponse list_paginated_fine_tuning_jobs(opts)

List your organization's fine-tuning jobs 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FineTuningApi.new
opts = { 
  after: 'after_example', # String | Identifier for the last job from the previous pagination request.
  limit: 20 # Integer | Number of fine-tuning jobs to retrieve.
}

begin
  #List your organization's fine-tuning jobs 
  result = api_instance.list_paginated_fine_tuning_jobs(opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FineTuningApi->list_paginated_fine_tuning_jobs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **String**| Identifier for the last job from the previous pagination request. | [optional] 
 **limit** | **Integer**| Number of fine-tuning jobs to retrieve. | [optional] [default to 20]

### Return type

[**ListPaginatedFineTuningJobsResponse**](ListPaginatedFineTuningJobsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **retrieve_fine_tuning_job**
> FineTuningJob retrieve_fine_tuning_job(fine_tuning_job_id)

Get info about a fine-tuning job.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FineTuningApi.new
fine_tuning_job_id = 'fine_tuning_job_id_example' # String | The ID of the fine-tuning job. 


begin
  #Get info about a fine-tuning job.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 
  result = api_instance.retrieve_fine_tuning_job(fine_tuning_job_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FineTuningApi->retrieve_fine_tuning_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fine_tuning_job_id** | **String**| The ID of the fine-tuning job.  | 

### Return type

[**FineTuningJob**](FineTuningJob.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



