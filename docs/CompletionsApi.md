# OpenAI::CompletionsApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_completion**](CompletionsApi.md#create_completion) | **POST** /completions | Creates a completion for the provided prompt and parameters.

# **create_completion**
> CreateCompletionResponse create_completion(body)

Creates a completion for the provided prompt and parameters.

### Example
```ruby
# load the gem
require 'open_ai'
# setup authorization
OpenAI.configure do |config|
end

api_instance = OpenAI::CompletionsApi.new
body = OpenAI::CreateCompletionRequest.new # CreateCompletionRequest | 


begin
  #Creates a completion for the provided prompt and parameters.
  result = api_instance.create_completion(body)
  p result
rescue OpenAI::ApiError => e
  puts "Exception when calling CompletionsApi->create_completion: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCompletionRequest**](CreateCompletionRequest.md)|  | 

### Return type

[**CreateCompletionResponse**](CreateCompletionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



