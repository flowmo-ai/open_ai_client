# OpenAIClient::ModerationsApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_moderation**](ModerationsApi.md#create_moderation) | **POST** /moderations | Classifies if text violates OpenAI&#x27;s Content Policy

# **create_moderation**
> CreateModerationResponse create_moderation(body)

Classifies if text violates OpenAI's Content Policy

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::ModerationsApi.new
body = OpenAIClient::CreateModerationRequest.new # CreateModerationRequest | 


begin
  #Classifies if text violates OpenAI's Content Policy
  result = api_instance.create_moderation(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling ModerationsApi->create_moderation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateModerationRequest**](CreateModerationRequest.md)|  | 

### Return type

[**CreateModerationResponse**](CreateModerationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



