# OpenAIClient::EditsApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_edit**](EditsApi.md#create_edit) | **POST** /edits | Creates a new edit for the provided input, instruction, and parameters.

# **create_edit**
> CreateEditResponse create_edit(body)

Creates a new edit for the provided input, instruction, and parameters.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::EditsApi.new
body = OpenAIClient::CreateEditRequest.new # CreateEditRequest | 


begin
  #Creates a new edit for the provided input, instruction, and parameters.
  result = api_instance.create_edit(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling EditsApi->create_edit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateEditRequest**](CreateEditRequest.md)|  | 

### Return type

[**CreateEditResponse**](CreateEditResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



