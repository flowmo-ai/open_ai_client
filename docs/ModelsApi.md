# OpenAIClient::ModelsApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_model**](ModelsApi.md#delete_model) | **DELETE** /models/{model} | Delete a fine-tuned model. You must have the Owner role in your organization to delete a model.
[**list_models**](ModelsApi.md#list_models) | **GET** /models | Lists the currently available models, and provides basic information about each one such as the owner and availability.
[**retrieve_model**](ModelsApi.md#retrieve_model) | **GET** /models/{model} | Retrieves a model instance, providing basic information about the model such as the owner and permissioning.

# **delete_model**
> DeleteModelResponse delete_model(model)

Delete a fine-tuned model. You must have the Owner role in your organization to delete a model.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::ModelsApi.new
model = 'model_example' # String | The model to delete


begin
  #Delete a fine-tuned model. You must have the Owner role in your organization to delete a model.
  result = api_instance.delete_model(model)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling ModelsApi->delete_model: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| The model to delete | 

### Return type

[**DeleteModelResponse**](DeleteModelResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_models**
> ListModelsResponse list_models

Lists the currently available models, and provides basic information about each one such as the owner and availability.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::ModelsApi.new

begin
  #Lists the currently available models, and provides basic information about each one such as the owner and availability.
  result = api_instance.list_models
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling ModelsApi->list_models: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListModelsResponse**](ListModelsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **retrieve_model**
> Model retrieve_model(model)

Retrieves a model instance, providing basic information about the model such as the owner and permissioning.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::ModelsApi.new
model = 'model_example' # String | The ID of the model to use for this request


begin
  #Retrieves a model instance, providing basic information about the model such as the owner and permissioning.
  result = api_instance.retrieve_model(model)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling ModelsApi->retrieve_model: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| The ID of the model to use for this request | 

### Return type

[**Model**](Model.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



