# OpenAIClient::BatchApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_batch**](BatchApi.md#cancel_batch) | **POST** /batches/{batch_id}/cancel | Cancels an in-progress batch. The batch will be in status &#x60;cancelling&#x60; for up to 10 minutes, before changing to &#x60;cancelled&#x60;, where it will have partial results (if any) available in the output file.
[**create_batch**](BatchApi.md#create_batch) | **POST** /batches | Creates and executes a batch from an uploaded file of requests
[**list_batches**](BatchApi.md#list_batches) | **GET** /batches | List your organization&#x27;s batches.
[**retrieve_batch**](BatchApi.md#retrieve_batch) | **GET** /batches/{batch_id} | Retrieves a batch.

# **cancel_batch**
> Batch cancel_batch(batch_id)

Cancels an in-progress batch. The batch will be in status `cancelling` for up to 10 minutes, before changing to `cancelled`, where it will have partial results (if any) available in the output file.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::BatchApi.new
batch_id = 'batch_id_example' # String | The ID of the batch to cancel.


begin
  #Cancels an in-progress batch. The batch will be in status `cancelling` for up to 10 minutes, before changing to `cancelled`, where it will have partial results (if any) available in the output file.
  result = api_instance.cancel_batch(batch_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling BatchApi->cancel_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**| The ID of the batch to cancel. | 

### Return type

[**Batch**](Batch.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_batch**
> Batch create_batch(body)

Creates and executes a batch from an uploaded file of requests

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::BatchApi.new
body = OpenAIClient::BatchesBody.new # BatchesBody | 


begin
  #Creates and executes a batch from an uploaded file of requests
  result = api_instance.create_batch(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling BatchApi->create_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BatchesBody**](BatchesBody.md)|  | 

### Return type

[**Batch**](Batch.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_batches**
> ListBatchesResponse list_batches(opts)

List your organization's batches.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::BatchApi.new
opts = { 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  limit: 20 # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
}

begin
  #List your organization's batches.
  result = api_instance.list_batches(opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling BatchApi->list_batches: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]

### Return type

[**ListBatchesResponse**](ListBatchesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **retrieve_batch**
> Batch retrieve_batch(batch_id)

Retrieves a batch.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::BatchApi.new
batch_id = 'batch_id_example' # String | The ID of the batch to retrieve.


begin
  #Retrieves a batch.
  result = api_instance.retrieve_batch(batch_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling BatchApi->retrieve_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**| The ID of the batch to retrieve. | 

### Return type

[**Batch**](Batch.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



