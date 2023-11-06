# OpenAI::ChatApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_chat_completion**](ChatApi.md#create_chat_completion) | **POST** /chat/completions | Creates a model response for the given chat conversation.

# **create_chat_completion**
> CreateChatCompletionResponse create_chat_completion(body)

Creates a model response for the given chat conversation.

### Example
```ruby
# load the gem
require 'open_ai'
# setup authorization
OpenAI.configure do |config|
end

api_instance = OpenAI::ChatApi.new
body = OpenAI::CreateChatCompletionRequest.new # CreateChatCompletionRequest | 


begin
  #Creates a model response for the given chat conversation.
  result = api_instance.create_chat_completion(body)
  p result
rescue OpenAI::ApiError => e
  puts "Exception when calling ChatApi->create_chat_completion: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateChatCompletionRequest**](CreateChatCompletionRequest.md)|  | 

### Return type

[**CreateChatCompletionResponse**](CreateChatCompletionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



